require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_subarray_sum_circular' do
    examples.each_with_index do |nums, index|
      it 'returns the maximum possible sum of a non-empty subarray of nums' do
        expect(max_subarray_sum_circular(nums)).to eq(results[index])
      end
    end
  end
end
