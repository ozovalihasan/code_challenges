require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#num_squares' do
    examples.each_with_index do |n, index|
      it 'returns the least number of perfect square numbers that sum to n' do
        expect(num_squares(n)).to eq(results[index])
      end
    end
  end
end
