# lib/board.rb

class Board
  attr_reader :board_matrix

  def initialize
    @board_matrix = Array.new(7) { Array.new(6) }
  end

  def print_board
    blank_dot = "\u26AA".encode('utf-8')
    board_matrix.each.map do |column|
      column.each.map do |dot|
        blank_dot if dot.nil?
      end
    end
  end

  def change_value(value, column, row)
    if @board_matrix[column][row].nil?
      @board_matrix[column][row] = value
    else
      raise 'BadInput'
    end
  end
end
