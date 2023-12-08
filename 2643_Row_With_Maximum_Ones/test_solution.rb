require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#row_and_maximum_ones' do
    examples.each_with_index do |mat, index|
      it 'returns an array containing the index of the row' do
        expect(row_and_maximum_ones(mat)).to eq(results[index])
      end
    end
  end
end
