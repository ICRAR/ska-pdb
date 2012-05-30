module LatexHelper
  def render_latex text
    text.gsub!(/\^(\S+)/, '^{\1}')
    text.gsub!(' ', '\\:')
    "\\(#{text}\\)"
  end
end