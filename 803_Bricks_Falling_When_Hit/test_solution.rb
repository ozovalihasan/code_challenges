require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#hit_bricks' do
    examples.each_slice(2).each_with_index do |(grid, hits), index|
      it 'returns an array result, where each result[i] is the number of bricks that will fall after the ith erasure is applied' do
        expect(hit_bricks(grid, hits)).to eq(results[index])
      end
    end
  end
end
