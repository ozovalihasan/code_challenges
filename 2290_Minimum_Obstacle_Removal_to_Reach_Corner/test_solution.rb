require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#minimum_obstacles' do
    examples.each_with_index do |grid, index|
      it 'returns the minimum number of obstacles to remove 
      so you can move from the upper left corner (0, 0) to the lower right corner (m - 1, n - 1)' do
        expect(minimum_obstacles(grid)).to eq(results[index])
      end
    end
  end
end
