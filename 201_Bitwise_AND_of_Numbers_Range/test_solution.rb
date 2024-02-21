require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#range_bitwise_and' do
    examples.each_slice(2).each_with_index do |(left, right), index|
      it 'returns the bitwise AND of all numbers in this range, inclusive' do
        expect(range_bitwise_and(left, right)).to eq(results[index])
      end
    end
  end
end
