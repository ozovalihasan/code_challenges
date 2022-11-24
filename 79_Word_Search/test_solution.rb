require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#exist' do
    examples.each_slice(2).each_with_index do |(board, word), index|
      it 'returns true if word exists in the grid' do
        expect(exist?(board, word)).to eq(results[index])
      end
    end
  end
end
