require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_max_length' do
    examples.each_with_index do |nums, index|
      it 'returns the maximum length of a contiguous subarray with an equal number of 0 and 1' do
        expect(find_max_length(nums)).to eq(results[index])
      end
    end
  end
end
