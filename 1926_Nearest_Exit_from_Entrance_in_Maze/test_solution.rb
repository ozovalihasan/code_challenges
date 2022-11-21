require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#nearest_exit' do
    examples.each_slice(2).each_with_index do |(maze, entrance), index|
      it 'returns the number of steps in the shortest path from the entrance to the nearest exit, or -1 if no such path exists' do
        expect(nearest_exit(maze, entrance)).to eq(results[index])
      end
    end
  end
end
