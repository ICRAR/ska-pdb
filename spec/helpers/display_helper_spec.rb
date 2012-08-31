require 'spec_helper'

describe "DisplayHelper" do
  it { helper.render_text(nil).should == raw("&nbsp;") }
  it { helper.render_text('').should == raw("&nbsp;") }
  it { helper.render_text('1234567890', :max_length => 5).should == "12..." }
  it { helper.render_text('1234567890', :search_text => '123').should == "<strong class=\"highlight\">123</strong>4567890" }
end