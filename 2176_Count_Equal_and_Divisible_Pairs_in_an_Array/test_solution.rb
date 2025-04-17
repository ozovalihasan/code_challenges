require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_pairs' do
    examples.each_slice(2).each_with_index do |(nums, k), index|
      it 'returns the number of pairs (i, j) where 0 <= i < j < n, '\
         'such that nums[i] == nums[j] and (i * j) is divisible by k' do
        expect(count_pairs(nums, k)).to eq(results[index])
      end
    end
  end
end
