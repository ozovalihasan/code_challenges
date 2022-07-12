require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#generate_matrix' do
    examples.each_with_index do |number, index|
      it 'returns a matrix filled with elements from 1 to n^2 in spiral order' do
        expect(generate_matrix(number)).to eq(results[index])
      end
    end
  end
end
