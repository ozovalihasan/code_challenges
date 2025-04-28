require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_subarrays' do
    examples.each_slice(2).each_with_index do |(nums, k), index|
      it 'returns the number of non-empty subarrays of nums whose score is strictly less than k' do
        expect(count_subarrays(nums, k)).to eq(results[index])
      end
    end
  end
end
