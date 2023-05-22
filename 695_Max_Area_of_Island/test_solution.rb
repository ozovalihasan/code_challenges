require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_area_of_island' do
    examples.each_with_index do |grid, index|
      it 'returns the maximum area of an island in grid. If there is no island, return 0' do
        expect(max_area_of_island(grid)).to eq(results[index])
      end
    end
  end
end
