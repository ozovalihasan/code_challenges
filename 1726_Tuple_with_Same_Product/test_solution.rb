require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#tuple_same_product' do
    examples.each_with_index do |nums, index|
      it 'returns the number of tuples (a, b, c, d)' do
        expect(tuple_same_product(nums)).to eq(results[index])
      end
    end
  end
end
