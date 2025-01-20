require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#first_complete_index' do
    examples.each_slice(2).each_with_index do |(arr, mat), index|
      it 'returns the smallest index i at which either a row or a column will be completely painted in mat' do
        expect(first_complete_index(arr, mat)).to eq(results[index])
      end
    end
  end
end
