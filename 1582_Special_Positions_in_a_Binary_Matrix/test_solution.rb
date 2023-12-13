require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#num_special' do
    examples.each_with_index do |mat, index|
      it 'returns the number of special positions in mat' do
        expect(num_special(mat)).to eq(results[index])
      end
    end
  end
end
