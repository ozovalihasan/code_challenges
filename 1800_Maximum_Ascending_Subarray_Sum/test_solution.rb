require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_ascending_sum' do
    examples.each_with_index do |nums, index|
      it 'returns the maximum possible sum of an ascending subarray in nums' do
        expect(max_ascending_sum(nums)).to eq(results[index])
      end
    end
  end
end
