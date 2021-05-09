#!/usr/bin/env ruby

describe Board do
  subject(:board) { described_class.new }
  describe '#initialize' do
    it 'creates a 7x6 matrix for the board' do
      expect(board.board_matrix).to include(Array.new(6))
    end
  end
  context 'player sees the board' do
    describe '#print_board' do
      context 'the board must be filled with icons' do
        blank_dot = "\u26aa".encode('utf-8')
        red_dot = "\u1F534".encode('utf-8')
        it 'returns the board with empty slots indicated' do
          blank_row = Array.new(6, blank_dot)
          blank_array = Array.new(7, blank_row)
          expect(board.print_board).to eq(blank_array) # Empty Dot ASCI
        end

        xit 'returns the board with filled slots indicated' do
          # TODO: Set fake input
          fake_row = [blank_dot, red_dot, blank_dot, blank_dot, blank_dot, red_dot, red_dot]
          fake_board_array = Array.new(6, fake_row)
          # TODO: Change to context to check for red AND blue dots
          # TODO: Change to loop to check for any dots
          expect(board.print_board).to eq(filled_array)
        end
      end
    end
  end
  describe '#change_value' do
    context 'player interacts with the board' do
      value = 'red'
      column = 1
      row = 2
      it 'changes a slot to the value if slot is nil' do
        board.change_value(value, column, row)
        expect(board.board_matrix[column][row]).to eq('red')
      end
      it 'throws an error if a player tries to change a non-empty slot' do
        board.change_value(value, column, row)
        expect { board.change_value(value, column, row) }.to raise_error('BadInput')
      end
    end
  end

  context 'the board is algorithmically analyzed' do
  end
end
