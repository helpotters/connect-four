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
        dots = {
          blank: "\u26aa".encode('utf-8'),
          red: "\u1F534".encode('utf-8'),
          blue: "\u1F535".encode('utf-8')
        }
        it 'returns the board with empty slots indicated' do
          blank_row = Array.new(6, dots[:blank])
          blank_array = Array.new(7, blank_row)
          expect(board.print_board).to eq(blank_array) # Empty Dot ASCI
        end

        context 'the board has inputs from player 1 and player 2' do
          it 'returns a board with red dots if it is labeled red' do
            board.change_value('red', 2, 3)
            expect(board.print_board[2][3]).to eq(dots[:red])
          end

          it 'returns a board with blue dots if is labeled blue' do
            board.change_value('blue', 3, 2)
            expect(board.print_board[3][2]).to eq(dots[:blue])
          end
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
