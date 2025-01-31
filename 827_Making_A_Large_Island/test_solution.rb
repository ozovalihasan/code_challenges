require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#largest_island' do
    examples.each_with_index do |grid, index|
      it 'returns the size of the largest island in grid after applying this operation' do
        expect(largest_island(grid)).to eq(results[index])
      end
    end
  end
end
