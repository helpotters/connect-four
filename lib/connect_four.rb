# lib/game.rb

require_relative('board')
require_relative('player')

# Creates and manages the game objects for connect-four
class Game
  attr_reader :board, :players

  def initialize
    @board = Board.new
    @players = {
      player_one: Player.new,
      player_two: Player.new
    }
  end

  def select_player(turn)
    if turn.odd?
      players[:player_one]
    elsif turn.even?
      players[:player_two]
    end
  end
end
