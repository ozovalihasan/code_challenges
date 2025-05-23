require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_points' do
    examples.each_slice(2).each_with_index do |(grid, queries), index|
      it 'returns the resulting array answer' do
        expect(max_points(grid, queries)).to eq(results[index])
      end
    end
  end
end
