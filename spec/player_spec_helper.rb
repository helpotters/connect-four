#!/usr/bin/env ruby

describe Player do
  subject(:player) { described_class.new }

  describe '#player_response' do
    context 'asks for a column value and validates it' do
      context 'asks the player for the column and row values' do
        it 'asks the player for a column value' do
          column_value_request = "Please select a column...\n"
          expect { player.ask_column }.to output(column_value_request).to_stdout
        end
        it 'asks the player for a row value' do
          row_value_request = "Please select a row...\n"
          expect { player.ask_row }.to output(row_value_request).to_stdout
        end
        it 'asks the player for the column and row values during a turn' do
        end
      end
      context 'validates the responses and returns errors if its a bad input' do
        before do
          bad_input = 'd'
          correct_column_input = 2
          correct_row_input = 1
          allow(player).to receive(:player_input).and_return(bad_input, correct_column_input, correct_row_input)
        end
        # TODO: Validate inputs
        xit 'returns an error upon bad input' do
        end
        xit 'returns an array when the column and row is correctly inputted' do
        end
      end
    end
  end
end
