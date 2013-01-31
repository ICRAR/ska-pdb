module MathHelper

  class Token
    Add = 1
    Subtract = 2
    Multiply = 3
    Divide = 4

    LParen = 11
    RParen = 12

    Number = 21
    Parameter = 22
    MathFunction = 23

    End = 0

    attr_accessor :kind, :value, :arguments

    def initialize
      @kind = nil
      @value = nil
      @arguments = nil
    end

    def unknown?
      @kind.nil?
    end

  end

  class Lexer
    def initialize(input)
      @input = input
      @output = []
      @idx = 0

      while '' != @input
        custom_matching = false
        token = Token.new
        @input.lstrip!
        case @input
#          when /\A-?\d+(\.\d+)?/ then
          when /\A(?:0|[1-9]\d*)(?:\.\d*)?(?:[eE][+\-]?\d+)?/
            token.kind = Token::Number
            token.value = Float($&.to_f)
          when /\A([[:alpha:]].*?)\(/ then
            token.kind = Token::MathFunction
            token.value = $1

            paren = 0
            i = $1.length
            start = i+1

            loop do
              paren += 1 if @input[i] == '('
              paren -= 1 if @input[i] == ')'
              break if paren == 0
              i += 1
            end

            token.arguments = @input[start..i-1]
            @input = @input[i+1..-1]
            custom_matching = true
          when /\A%([[:graph:]].*?)%/ then
            token.kind = Token::Parameter
            token.value = $1
          when /\A\+/ then
            token.kind = Token::Add
          when /\A-/ then
            token.kind = Token::Subtract
          when /\A\*/ then
            token.kind = Token::Multiply
          when /\A\// then
            token.kind = Token::Divide
          when /\A\(/ then
            token.kind = Token::LParen
          when /\A\)/ then
            token.kind = Token::RParen
        end
        raise "Unknown token: #{@input}" if token.unknown?
        @input = $' unless custom_matching
        @output << token
      end
      token = Token.new
      token.kind = Token::End
      @output << token
    end

    def pop
      @idx += 1
      @output[@idx-1]
    end

    def revert
      @idx -= 1
    end

  end

  class Parser
    def parse(input)

      @lexer = Lexer.new(input)

      begin
        expression_value = expression

        token = @lexer.pop
        if token.kind != Token::End
          raise "Unterminated expression"
        end

        expression_value
      rescue Exception => e
        raise "\n\tUnable to parse '#{input}': #{e}"
      end

    end

    protected
    def expression
      component1 = factor

      additive_operators = [Token::Add, Token::Subtract]

      token = @lexer.pop
      while additive_operators.include?(token.kind)
        component2 = factor

        if token.kind == Token::Add
          component1 += component2
        else
          component1 -= component2
        end

        token = @lexer.pop
      end
      @lexer.revert

      component1
    end

    def factor
      factor1 = number

      multiplicative_operators = [Token::Multiply, Token::Divide]

      token = @lexer.pop
      while multiplicative_operators.include?(token.kind)
        factor2 = number

        if token.kind == Token::Multiply
          factor1 *= factor2
        else
          factor1 /= factor2
        end

        token = @lexer.pop
      end
      @lexer.revert

      factor1
    end

    def number
      token = @lexer.pop
      negative = 1

      if token.kind == Token::Subtract
        token = @lexer.pop
        negative = -1
      end

      if token.kind == Token::LParen
        value = expression
        expected_rparen = @lexer.pop
        raise 'Unbalanced parenthesis' unless expected_rparen.kind == Token::RParen
      elsif token.kind == Token::Number
        value = token.value.to_f
      elsif token.kind == Token::MathFunction
        if token.value == "sqrt"
          value = Math.sqrt(Parser.new.parse(token.arguments))
        elsif token.value == "log10"
          value = Math.log10(Parser.new.parse(token.arguments))
        elsif token.value == "sin"
          value = Math.sin(Parser.new.parse(token.arguments))
        elsif token.value == "cos"
          value = Math.cos(Parser.new.parse(token.arguments))
        elsif token.value == "asin"
          value = Math.asin(Parser.new.parse(token.arguments))
        elsif token.value == "pow"
          args = token.arguments.split(",", 2)

          base = Parser.new.parse(args[0].strip)
          exponent = Parser.new.parse(args[1].strip)
          value = base.to_f ** exponent.to_f
        else
          raise "Unknown function: #{token.value}"
        end
      elsif token.kind == Token::Parameter
        param = Parameter.find_by_name(token.value)
        if param.nil?
          raise "Referenced parameter '#{token.value}' does not exist"
        end
        begin
        value = param.value
        rescue Exception => e
          raise "\n\tParameter '#{param.name}' cannot be evaluated: #{e}"
        end
      else
        raise "Not a number: #{token.value}"
      end

      value * negative
    end
  end

end