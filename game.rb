require './player'
require './question'

class Game
  attr_reader :players

  def initialize
    @player_1 = Player.new("Player 1", 3)
    @player_2 = Player.new("Player 2", 3)
    @players = [@player_1, @player_2]
  end

end