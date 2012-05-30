require 'spec_helper'

describe "LatexHelper" do
  it "encapsulate string with the inline tags required for mathjax \\( \\)" do
    helper.render_latex("formula").should == '\\(formula\\)'
  end

  it "replaces spaces with latex medium space \\:" do
    helper.render_latex("a m").should == '\\(a\\:m\\)'
  end

  it "groups blocks that are should be superscript" do
    helper.render_latex("a^-5 m").should == '\\(a^{-5}\\:m\\)'
  end
end