#!/usr/bin/env ruby

describe Board do
  subject(:board) { described_class.new }
  describe '#initialize' do
    it 'creates a 7x6 matrix for the board' do
      expect(board.board_matrix).to include(Array.new(6))
    end
  end
  context 'player sees the board' do
  end

  context 'player interacts with the board' do
  end

  context 'the board is algorithmically analyzed'
end
