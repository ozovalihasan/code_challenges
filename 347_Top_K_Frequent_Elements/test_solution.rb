require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#top_k_frequent' do
    examples.each_slice(2).each_with_index do |(nums, k), index|
      it 'returns the k most frequent elements.' do
        expect(top_k_frequent(nums, k)).to match_array(results[index])
      end
    end
  end
end
