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
  context 'the player plays a round' do
    describe '#play' do
      context 'selects which is the current player' do
        it 'returns player one on odd turns' do
          odd_turn = 5
          expect(game.select_player(odd_turn)).to eq(game.players[:player_one])
        end
        it 'returns player two on even turns' do
          even_turn = 4
          expect(game.select_player(even_turn)).to eq(game.players[:player_two])
        end

        xit 'iterates the turn by one every round' do
          expect(game.play)
        end
      end

      xcontext 'asks for player input to manipulate the connect-four board' do
        xcontext 'player input' do
        end
      end
      xcontext 'the game checks the win conditions' do
        xit 'checks if the player has won'
        xit 'checks if the player has tied'
      end
    end
  end
end
