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

  it "generates a color given a set" do
    Hashcolor.colors = ["006064", "8BC34A", "FF9800"]
    Hashcolor.colors.not_nil!.should contain(Hashcolor.generate("hugo"))
    Hashcolor.colors.not_nil!.should contain(Hashcolor.generate("abonizio"))
  end
end
