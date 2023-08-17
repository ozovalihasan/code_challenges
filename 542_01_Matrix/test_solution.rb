require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#update_matrix' do
    examples.each_with_index do |mat, index|
      it 'returns the distance of the nearest 0 for each cell' do
        expect(update_matrix(mat)).to eq(results[index])
      end
    end
  end
end
