require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_paths' do
    examples.each_with_index do |grid, index|
      it 'returns the number of strictly increasing paths in the grid' do
        expect(count_paths(grid)).to eq(results[index])
      end
    end
  end
end
