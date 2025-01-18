require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_cost' do
    examples.each_with_index do |grid, index|
      it 'returns the minimum cost to make the grid have at least one valid path' do
        expect(min_cost(grid)).to eq(results[index])
      end
    end
  end
end
