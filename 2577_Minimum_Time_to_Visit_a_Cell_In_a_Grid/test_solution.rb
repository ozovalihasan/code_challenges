require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#minimum_time' do
    examples.each_with_index do |grid, index|
      it 'returns the minimum time required in which you can visit the bottom-right cell of the matrix' do
        expect(minimum_time(grid)).to eq(results[index])
      end
    end
  end
end
