require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#num_subarray_product_less_than_k' do
    examples.each_slice(2).each_with_index do |(nums, k), index|
      it 'returns the number of contiguous subarrays where the product of all the elements in the subarray is strictly less than k' do
        expect(num_subarray_product_less_than_k(nums, k)).to eq(results[index])
      end
    end
  end
end
