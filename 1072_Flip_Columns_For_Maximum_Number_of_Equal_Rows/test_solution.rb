require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_equal_rows_after_flips' do
    examples.each_with_index do |matrix, index|
      it 'returns the maximum number of rows that have all values equal after some number of flips' do
        expect(max_equal_rows_after_flips(matrix)).to eq(results[index])
      end
    end
  end
end
