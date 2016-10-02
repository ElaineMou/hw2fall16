require 'part1.rb'

describe "#palindrome?" do
  it "should be defined" do
 #   lambda { palindrome?("Testing") }.should_not raise_error
    expect(lambda {palindrome?("Testing")}).not_to raise_error
  end
  it 'classifies true cases [10 points]' do
    expect(palindrome?('v')).to be_truthy, "'v' is a palindrome"
    ['aba', 'A bc Ba', 'La -d !Al'].each do |string|
      expect(palindrome?(string)).to be_truthy, "Incorrect results for input: \"#{string}\""
    end
  end
  it 'classifies false cases [10 points]' do
    expect(palindrome?('abasdr')).to be_falsy, "'a' is not a palindrome"
    ['asdfgh', 'Unix'].each do |string|
      expect(palindrome?(string)).to be_falsy, "Incorrect results for input: \"#{string}\""
    end
  end
  it 'works on the empty string [5 points]' , points: 5 do
    expect(palindrome?('')).to be_truthy
  end
  it 'works on nonletters [5 points]' , points: 5 do
    expect(palindrome?('#$!!!^as')).to be_falsy
    expect(palindrome?('B%%v&b')).to be_truthy
  end
end

describe "#count_words" do
  it "should be defined" do
#    lambda { count_words("Testing") }.should_not raise_error
    expect(lambda{count_words("Testing")}).not_to raise_error
  end
  it "should return a Hash" do
#    count_words("Testing").class.should == Hash
    expect(count_words("Testing")).to be_a_kind_of(Hash) 
  end
  it "should work on empty string" do
      expect(count_words("")).to eq({}), "Incorrect results for ''"
  end
  it "should return correct results for Panama" do
      hash = count_words("A man, a plan, a canal -- Panama")
      expect(hash["a"]).to eq(3)
      expect(hash["man"]).to eq(1)
      expect(hash["canal"]).to eq(1)
      expect(hash["panama"]).to eq(1)
      expect(hash["canal"]).to eq(1)
  end
  it "should return correct results for Doobee" do
      hash = count_words("Doo bee doo bee doo")
      expect(hash["doo"]).to eq(3)
      expect(hash["bee"]).to eq(2)
  end
end
