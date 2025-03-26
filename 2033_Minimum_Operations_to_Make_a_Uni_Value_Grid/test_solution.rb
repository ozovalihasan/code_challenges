require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_operations' do
    examples.each_slice(2).each_with_index do |(grid, x), index|
      it 'returns the minimum number of operations to make the grid uni-value' do
        expect(min_operations(grid, x)).to eq(results[index])
      end
    end
  end
end
