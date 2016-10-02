require 'part2.rb'

describe "#rps_game_winner" do
  it "should be defined" do
#    lambda { rps_game_winner([["X", "P"], ["Y", "S"]]) }.should_not raise_error
    expect(lambda {rps_game_winner([["X", "P"], ["Y", "S"]])}).not_to raise_error
  end
  # this is given for free in the outline
  it "should raise WrongNumberOfPlayersError if there are not exactly two players" do
#    lambda { rps_game_winner([ ["Allen", "S"] ]) }.should raise_error, "No error raised for incorrect number of players"
    expect(lambda { rps_game_winner([ ["Allen", "S"] ]) }).to raise_error(WrongNumberOfPlayersError)
  end
  it "should raise NoSuchStrategyError if invalid moves" do
#    lambda { rps_game_winner([ ["Allen", "q"],["Bob", "R"]) }.should raise_error, "No error raised for incorrect moves"
    expect(lambda { rps_game_winner([ ["Allen", "q"],["Bob", "R"] ]) }).to raise_error(NoSuchStrategyError)
  end
end

describe "#rps_tournament_winner" do
  it "should be defined" do
#    lambda { rps_tournament_winner([["X", "P"], ["Y", "S"]]) }.should_not raise_error
    expect(lambda { rps_tournament_winner([["X", "P"], ["Y", "S"]]) }).not_to raise_error
  end
  it "should return correct results" do
      expect( rps_tournament_winner([[[["Joe","P"], ["Mary", "S"]],[["Bob", "R"], ["Alice", "S"]]],[[["Steve", "S"],["Jane","P"]],[["Ted","R"],["Carol","P"]]]])).to eq(["Bob","R"])
  end
end
