require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#search_matrix' do
    examples.each_slice(2).each_with_index do |(matrix, target), index|
      it 'returns true if target is in matrix or false otherwise' do
        expect(search_matrix(matrix, target)).to eq(results[index])
      end
    end
  end
end
