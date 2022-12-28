require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_stone_sum' do
    examples.each_slice(2).each_with_index do |(piles, k), index|
      it 'returns the minimum possible total number of stones remaining after applying the k operations' do
        expect(min_stone_sum(piles, k)).to eq(results[index])
      end
    end
  end
end
