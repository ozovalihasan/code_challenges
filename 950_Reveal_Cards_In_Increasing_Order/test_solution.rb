require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#deck_revealed_increasing' do
    examples.each_with_index do |deck, index|
      it 'returns an ordering of the deck that would reveal the cards in increasing order' do
        expect(deck_revealed_increasing(deck)).to eq(results[index])
      end
    end
  end
end
