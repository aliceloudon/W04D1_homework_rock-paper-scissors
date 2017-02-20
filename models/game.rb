class Game

def initialize(hand1, hand2)
  @hand1 = hand1
  @hand2 = hand2
end

def play_game
  if @hand1 == "rock" && @hand2 == "scissors"
    return "Player 1 wins by playing rock!"
  elsif @hand1 == "paper" && @hand2 == "rock"
    return "Player 1 wins by playing paper!"
  elsif @hand1 == "scissors" && @hand2 == "paper"
    return "Player 1 wins by playing scissors!"
  elsif @hand1 == "scissors" && @hand2 == "rock"
    return "Player 2 wins by playing rock!"
  elsif @hand1 == "rock" && @hand2 == "paper"
    return "Player 2 wins by playing paper!"
  elsif @hand1 == "paper" && @hand2 == "scissors"
    return "Player 2 wins by playing scissors!"
  elsif @hand1 == @hand2
    return "It's a draw!"
  end
end

end

