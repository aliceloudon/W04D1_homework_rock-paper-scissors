require 'minitest/autorun'
require_relative '../models/game.rb'

class TestGame < Minitest::Test

  def setup
    @game = Game.new("rock","paper")
  end

  def test_play_game
    assert_equal("Player 2 wins by playing paper!", @game.play_game() )
  end

end