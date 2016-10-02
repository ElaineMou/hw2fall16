require 'part3.rb'

describe "dessert" do
  it "should define a constructor" do
#    lambda { Dessert.new('a', 1) }.should_not raise_error
    expect(lambda {Dessert.new('a', 1)}).not_to raise_error
  end
 [:healthy?, :delicious?].each do |method|
    it "should define #{method}" do
#      Dessert.new('a',1).should respond_to method
      expect(Dessert.new('a',1)).to respond_to(method)
    end
  end
end

describe 'init, getters and setters' do
    it 'should initialize correctly' do
       cake = Dessert.new('Cake', 500)
       expect(cake.name).to eq('Cake')
       expect(cake.calories).to eq(500)
       expect(cake.healthy?).to be_falsy
       expect(cake.delicious?).to be_truthy
    end
    it 'should reject invalid initializers' do
       expect { Dessert.new('  ',33) }.to raise_error(ArgumentError)
       expect { Dessert.new('Pie','-15')}.to raise_error(ArgumentError)
    end
   
    it 'getters and setters' do
        pie = Dessert.new('Pie', 150)
        expect(pie.name).to eq('Pie')
        pie.name = 'Super Pie'
        expect(pie.name).to eq('Super Pie')
        expect(pie.healthy?).to be_truthy
        pie.calories = 300
        expect(pie.calories).to eq(300)
        expect(pie.healthy?).to be_falsy
    end
end

describe "jellybean" do
  it "should define a constructor" do
#    lambda { JellyBean.new('a', 1, 2) }.should_not raise_error
    expect(lambda { JellyBean.new('a', 1, 2) }).not_to raise_error
  end
    [:healthy?, :delicious?].each do |method|
    it "should define #{method}" do
#      JellyBean.new('a',1, 2).should respond_to method 
      expect(JellyBean.new('a',1, 2)).to respond_to(method) 
    end
  end
end

describe 'init, getters and setters' do
    it 'should initialize correctly' do
       bean = JellyBean.new('bean', 15, 'berry')
       expect(bean.name).to eq('bean')
       expect(bean.calories).to eq(15)
       expect(bean.healthy?).to be_truthy
       expect(bean.delicious?).to be_truthy
    end
    it 'should reject invalid initializers' do
       expect { JellyBean.new('  ',33, 'Orange') }.to raise_error(ArgumentError)
       expect { JellyBean.new('Beany','-15', 'Lime')}.to raise_error(ArgumentError)
    end
   
    it 'getters and setters' do
        bean = JellyBean.new('bean', 28, 'Black Licorice')
        expect(bean.name).to eq('bean')
        bean.name = 'Super Bean'
        expect(bean.name).to eq('Super Bean')
        expect(bean.healthy?).to be_truthy
        bean.calories = 300
        expect(bean.calories).to eq(300)
        expect(bean.healthy?).to be_falsy
        expect(bean.delicious?).to be_falsy
    end
end