require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#num_islands' do
    examples.each_with_index do |grid, index|
      it 'returns the number of islands' do
        expect(num_islands(grid)).to eq(results[index])
      end
    end
  end
end
