require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#maximum_sum' do
    examples.each_with_index do |nums, index|
      it 'returns the maximum value of nums[i] + nums[j] that you can obtain over all possible indices i and j that satisfy the conditions' do
        expect(maximum_sum(nums)).to eq(results[index])
      end
    end
  end
end
