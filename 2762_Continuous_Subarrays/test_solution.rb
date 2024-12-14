require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#continuous_subarrays' do
    examples.each_with_index do |nums, index|
      it 'returns the total number of continuous subarrays' do
        expect(continuous_subarrays(nums)).to eq(results[index])
      end
    end
  end
end
