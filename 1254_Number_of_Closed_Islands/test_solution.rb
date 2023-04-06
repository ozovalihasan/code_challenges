require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#closed_island' do
    examples.each_with_index do |grid, index|
      it 'returns the number of closed islands' do
        expect(closed_island(grid)).to eq(results[index])
      end
    end
  end
end
