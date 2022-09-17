require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#longest_increasing_path' do
    examples.each_with_index do |matrix, index|
      it 'returns the length of the longest increasing path in matrix' do
        expect(longest_increasing_path(matrix)).to eq(results[index])
      end
    end
  end
end
