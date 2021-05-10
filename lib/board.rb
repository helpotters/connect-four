# lib/board.rb

class Board
  attr_reader :board_matrix, :dots

  def initialize
    @board_matrix = Array.new(7) { Array.new(6) }
    @dots = {
      blank: "\u26AA".encode('utf-8'),
      red: "\u1F534".encode('utf-8'),
      blue: "\u1F535".encode('utf-8')
    }
  end

  def print_board
    board_matrix.each.map do |column|
      column.each.map do |dot|
        change_color(dot)
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

  private

  def change_color(dot)
    case dot
    when nil
      dots[:blank]
    when 'red'
      dots[:red]
    when 'blue'
      dots[:blue]
    end
  end
end
