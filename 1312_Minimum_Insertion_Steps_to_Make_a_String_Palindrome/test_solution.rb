require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_insertions' do
    examples.each_with_index do |s, index|
      it 'returns the minimum number of steps to make s palindrome' do
        expect(min_insertions(s)).to eq(results[index])
      end
    end
  end
end
