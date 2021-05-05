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
        it 'returns the board with empty slots indicated' do
          blank_dot = "\u26aa".encode('utf-8')
          blank_row = Array.new(6, blank_dot)
          blank_array = Array.new(7, blank_row)
          expect(board.print_board).to eq(blank_array) # Empty Dot ASCI
        end

        xit 'returns the board with filled slots indicated' do
        end
      end
    end
  end

  context 'player interacts with the board' do
  end

  context 'the board is algorithmically analyzed'
end
