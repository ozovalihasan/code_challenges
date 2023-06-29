require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#shortest_path_all_keys' do
    examples.each_with_index do |grid, index|
      it 'returns the lowest number of moves to acquire all keys' do
        expect(shortest_path_all_keys(grid)).to eq(results[index])
      end
    end
  end
end
