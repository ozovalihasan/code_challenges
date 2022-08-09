require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#contains_nearby_duplicate' do
    examples.each_slice(2).each_with_index do |(nums, k), index|
      it 'returns true if if there are two distinct indices i and j in the array such that nums[i] == nums[j] and abs(i - j) <= k' do
        expect(contains_nearby_duplicate(nums, k)).to eq(results[index])
      end
    end
  end
end
