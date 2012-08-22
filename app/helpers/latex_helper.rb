module LatexHelper
  def render_latex text
    text.gsub!(/\^(\S+)/, '^{\1}')
    text.gsub!(' ', '\\:')
    "\\(#{text}\\)"
  end
end

#desc.gsub!(/\\\\([^\s]+)/, '\\(\\\\\1\\)')

#research in how to get formulas in descriptions to be rendered in LaTeX

#r_equ
#r_gal
#r_gal = A_G^T
#A_G^T
#r_equ = A_G
#\\Gamma
#\\phi = 0.05542 arcsec
#G_RVS (= C1M861 = RVF)
#(http://www-gsss.stsci.edu/gsc/gsc2/GSC2home.htm)
#(see also http://www.imcce.fr/Equipes/ASD/inpop/inpop06_preprint.pdf)
#http://www.codata.org/ and http://physics.nist.gov/constants (Web Version 5.0)
#4 <= G <= 12.5:
#m s^-1;