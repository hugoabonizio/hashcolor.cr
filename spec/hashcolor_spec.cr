require "./spec_helper"

describe Hashcolor do
  it "generates RGB from string" do
    result = Hashcolor.generate("alo")
    result.should eq("0179A4")
    result.size.should eq(6)
  end

  it "generates RGB color deterministically" do
    value1 = "test@email.com"
    value2 = "test@email.com"
    result1 = Hashcolor.generate(value1)
    result1.should eq("B2F9FF")
    result1.size.should eq(6), result1
    Hashcolor.generate(value2).should eq(result1)
  end
end
