require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#num_enclaves' do
    examples.each_with_index do |grid, index|
      it 'returns the number of land cells in grid for which we cannot walk off the boundary of the grid in any number of moves' do
        expect(num_enclaves(grid)).to eq(results[index])
      end
    end
  end
end
