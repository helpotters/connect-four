# connect_four_spec.rb
require('./lib/connect_four')

describe Game do
  subject(:game) { described_class.new }

  context 'the player begins the game' do
    describe '#initialize' do
      it 'creates the board object' do
        expect(game.board).to be_an_instance_of(Board)
      end

      context 'creating player objects' do
        it 'creates the first player object' do
          expect(game.players[:player_one]).to be_an_instance_of(Player)
        end
        it 'creates the second player object' do
          expect(game.players[:player_two]).to be_an_instance_of(Player)
        end
      end
    end
  end
end

describe Board do
end
