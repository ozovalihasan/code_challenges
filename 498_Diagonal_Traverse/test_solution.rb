require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_diagonal_order' do
    examples.each_with_index do |mat, index|
      it 'returns an array of all the elements of the array in a diagonal order' do
        expect(find_diagonal_order(mat)).to eq(results[index])
      end
    end
  end
end
