require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#transpose' do
    examples.each_with_index do |matrix, index|
      it 'returns the transpose of matrix' do
        expect(transpose(matrix)).to eq(results[index])
      end
    end
  end
end
