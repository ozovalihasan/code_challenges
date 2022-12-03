require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#lucky_numbers' do
    examples.each_with_index do |matrix, index|
      it 'returns all lucky numbers in the matrix in any order' do
        expect(lucky_numbers(matrix)).to eq(results[index])
      end
    end
  end
end
