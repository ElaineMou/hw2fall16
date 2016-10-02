class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  firststrat = game[0][1].downcase
  secondstrat = game[1][1].downcase
  validstrats = ["r","p","s"]
  raise NoSuchStrategyError unless ((validstrats.include? firststrat) && (validstrats.include? secondstrat))
  if firststrat == "r"
    if secondstrat == "p"
      return game[1]
    elsif secondstrat == "s"
      return game[0]
    end
  elsif firststrat == "p"
    if secondstrat == "r"
      return game[0]
    elsif secondstrat == "s"
      return game[1]
    end
  elsif firststrat == "s"
    if secondstrat == "p"
      return game[0]
    elsif secondstrat == "r"
      return game[1]
    end
  end
end

def rps_tournament_winner(tournament)
  if tournament[0][0].instance_of? String
    return rps_game_winner(tournament)
  else
    firstplayer = rps_tournament_winner(tournament[0])
    secondplayer = rps_tournament_winner(tournament[1])
    return rps_game_winner([firstplayer,secondplayer])
  end
end

#feel free to add your own helper functions as needed
