require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_product' do
    examples.each_with_index do |nums, index|
      it 'returns the maximum value of (nums[i]-1)*(nums[j]-1)' do
        expect(max_product(nums)).to eq(results[index])
      end
    end
  end
end
