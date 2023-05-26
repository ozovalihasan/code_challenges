require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#stone_game_ii' do
    examples.each_with_index do |piles, index|
      it 'returns the maximum number of stones Alice can get' do
        expect(stone_game_ii(piles)).to eq(results[index])
      end
    end
  end
end
