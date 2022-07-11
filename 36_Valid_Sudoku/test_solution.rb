require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#is_valid_sudoku' do
    examples.each_with_index do |example, index|
      it 'returns whether the given array is valid sudoku matrix or not ' do
        expect(is_valid_sudoku(example)).to eq(results[index])
      end
    end
  end
end
