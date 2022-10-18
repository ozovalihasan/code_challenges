require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#diagonal_sum' do
    examples.each_with_index do |mat, index|
      it 'returns the sum of the matrix diagonals' do
        expect(diagonal_sum(mat)).to eq(results[index])
      end
    end
  end
end
