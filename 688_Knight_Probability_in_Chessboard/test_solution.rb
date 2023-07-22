require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#knight_probability' do
    examples.each_slice(4).each_with_index do |(n, k, row, column), index|
      it 'returns the probability that the knight remains on the board after it has stopped moving' do
        expect(knight_probability(n, k, row, column).round(5)).to eq(results[index])
      end
    end
  end
end
