require 'part5.rb'

describe "CartesianProduct" do
  it "should exist" do
#    lambda { CartesianProduct.new(1..2,3..4) }.should_not raise_error
    expect(lambda { CartesianProduct.new(1..2,3..4) }).not_to raise_error
  end
  
  it "should work" do
    c = CartesianProduct.new([:a, :b], [4,5])
    c.each { |elt| puts elt.inspect }
  end
  
  it "should handle empty set" do
    c = CartesianProduct.new([:a,:b], [])
    c.each { |elt| puts elt.inspect }
  end
end

