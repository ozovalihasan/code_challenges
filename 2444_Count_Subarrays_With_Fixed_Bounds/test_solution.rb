require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_subarrays' do
    examples.each_slice(3).each_with_index do |(nums, min_k, max_k), index|
      it 'returns the number of fixed-bound subarrays' do
        expect(count_subarrays(nums, min_k, max_k)).to eq(results[index])
      end
    end
  end
end
