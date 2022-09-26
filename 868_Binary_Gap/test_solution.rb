require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#binary_gap' do
    examples.each_with_index do |n, index|
      it 'returns the longest distance between any two adjacent 1"s in the binary representation of n' do
        expect(binary_gap(n)).to eq(results[index])
      end
    end
  end
end
