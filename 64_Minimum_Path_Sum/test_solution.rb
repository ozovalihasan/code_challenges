require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_path_sum' do
    examples.each_with_index do |grid, index|
      it 'returns the sum of all numbers along its path minimizes the sum' do
        expect(min_path_sum(grid)).to eq(results[index])
      end
    end
  end
end
