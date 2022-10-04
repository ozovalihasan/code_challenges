require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#num_rook_captures' do
    examples.each_with_index do |board, index|
      it 'returns the number of available captures for the white rook' do
        expect(num_rook_captures(board)).to eq(results[index])
      end
    end
  end
end
