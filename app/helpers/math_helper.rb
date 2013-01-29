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

    End = 0

    attr_accessor :kind, :value

    def initialize
      @kind = nil
      @value = nil
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
        token = Token.new
        @input.lstrip!
        case @input
          when /\A\+/ then
            token.kind = Token::Add
          when /\A-/ then
            token.kind = Token::Subtract
          when /\A\*/ then
            token.kind = Token::Multiply
          when /\A\// then
            token.kind = Token::Divide
          when /\A\d+(\.\d+)?/ then
#          when /\A-?(?:0|[1-9]\d*)(?:\.\d*)?(?:[eE][+\-]?\d+)?/
            token.kind = Token::Number
            token.value = Float($&.to_f)
          when /\A%([[:graph:]].*?)%/ then
            token.kind = Token::Parameter
            token.value = $1
          when /\A\(/ then
            token.kind = Token::LParen
          when /\A\)/ then
            token.kind = Token::RParen
        end
        raise "Unknown token: #{@input}" if token.unknown?
        @input = $'
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

      expression_value = expression
      token = @lexer.pop
      if token.kind == Token::End
        expression_value
      else
        raise "Unterminated expression"
      end

      expression_value
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

      if token.kind == Token::LParen
        value = expression

        expected_rparen = @lexer.pop
        raise 'Unbalanced parenthesis' unless expected_rparen.kind == Token::RParen
      elsif token.kind == Token::Number
        value = token.value.to_f
      elsif token.kind == Token::Parameter
        param = Parameter.find_by_name(token.value)
        value = param.value
      else
        raise "Not a number: #{token.value}"
      end

      value
    end
  end

end