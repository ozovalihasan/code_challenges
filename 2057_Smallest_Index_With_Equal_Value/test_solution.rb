require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#smallest_equal' do
    examples.each_with_index do |nums, index|
      it 'returns the smallest index i of nums such that i mod 10 == nums[i]' do
        expect(smallest_equal(nums)).to eq(results[index])
      end
    end
  end
end
