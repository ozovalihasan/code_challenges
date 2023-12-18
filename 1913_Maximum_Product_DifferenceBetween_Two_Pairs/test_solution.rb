require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_product_difference' do
    examples.each_with_index do |nums, index|
      it 'returns the maximum such product difference' do
        expect(max_product_difference(nums)).to eq(results[index])
      end
    end
  end
end
