require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#minimum_one_bit_operations' do
    examples.each_with_index do |num, index|
      it 'returns the minimum number of operations to transform n into 0' do
        expect(minimum_one_bit_operations(num)).to eq(results[index])
      end
    end
  end
end
