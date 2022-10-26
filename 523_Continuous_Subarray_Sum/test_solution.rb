require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#check_subarray_sum' do
    examples.each_slice(2).each_with_index do |(nums, k), index|
      it 'returns true if nums has a continuous subarray of size at least two whose elements sum up to a multiple of k, or false otherwise' do
        expect(check_subarray_sum(nums, k)).to eq(results[index])
      end
    end
  end
end
