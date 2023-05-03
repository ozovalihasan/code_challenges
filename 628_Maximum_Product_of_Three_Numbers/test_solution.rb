require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#maximum_product' do
    examples.each_with_index do |nums, index|
      it 'returns the maximum product' do
        expect(maximum_product(nums)).to eq(results[index])
      end
    end
  end
end
