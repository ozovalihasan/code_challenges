require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#maximum_subarray_sum' do
    examples.each_slice(2).each.with_index do |(nums, k), index|
      it 'returns the maximum subarray sum of all the subarrays that meet the conditions' do
        expect(maximum_subarray_sum(nums, k)).to eq(results[index])
      end
    end
  end
end
