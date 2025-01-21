require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#grid_game' do
    examples.each_with_index do |grid, index|
      it 'returns the number of points collected by the second robot' do
        expect(grid_game(grid)).to eq(results[index])
      end
    end
  end
end
