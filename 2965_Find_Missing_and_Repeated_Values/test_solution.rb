require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_missing_and_repeated_values' do
    examples.each_with_index do |grid, index|
      it 'returns a 0-indexed integer array ans of size 2 where ans[0] equals to a and ans[1] equals to b' do
        expect(find_missing_and_repeated_values(grid)).to eq(results[index])
      end
    end
  end
end
