require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#longest_monotonic_subarray' do
    examples.each_with_index do |nums, index|
      it 'returns the length of the longest subarray of nums which is either strictly increasing or strictly decreasing' do
        expect(longest_monotonic_subarray(nums)).to eq(results[index])
      end
    end
  end
end
