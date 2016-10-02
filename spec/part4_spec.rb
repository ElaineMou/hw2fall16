require 'part4.rb'

describe "Class" do
  it "should have an attr_accessor_with_history method" do
#    lambda { Class.new.attr_accessor_with_history :x }.should_not raise_error
    expect(lambda { Class.new.attr_accessor_with_history :x }).not_to raise_error
  end
  it "should get stuff" do
    object = Foo.new();
    expect(object.bar_history).to eq([nil])
    object.bar = 3
    object.bar = :wowzo
    object.bar = 'boo!'
    expect(object.bar_history).to eq([nil, 3, :wowzo, 'boo!'])
    
    object2 = Foo.new();
    object2.bar = 4;
    expect(object2.bar_history).to eq([nil, 4])
  end
end

