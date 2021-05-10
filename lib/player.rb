# lib/player.rb

class Player
  def player_turn
    ask_column
    ask_row
  end

  def ask_column
    puts 'Please select a column...'
  end

  def ask_row
    puts 'Please select a row...'
  end

  private

  def player_input
    gets.chomp
  end
end
