require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#zero_filled_subarray' do
    examples.each_with_index do |nums, index|
      it 'returns the number of subarrays filled with 0' do
        expect(zero_filled_subarray(nums)).to eq(results[index])
      end
    end
  end
end
