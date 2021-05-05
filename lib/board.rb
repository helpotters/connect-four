# lib/board.rb

class Board
  attr_reader :board_matrix

  def initialize
    @board_matrix = Array.new(7) { Array.new(6) }
  end
end
