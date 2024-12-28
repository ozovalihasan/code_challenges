require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_sum_of_three_subarrays' do
    examples.each_slice(2).each_with_index do |(nums, arr_size), index|
      it 'returns the result as a list of indices representing the starting position of each interval (0-indexed)' do
        expect(max_sum_of_three_subarrays(nums, arr_size)).to eq(results[index])
      end
    end
  end
end
