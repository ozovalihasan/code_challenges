require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#construct' do
    examples.each_with_index do |grid, index|
      it 'returns the root of the Quad-Tree representing the grid' do
        expect(construct(grid)).to eq(results[index])
      end
    end
  end
end
