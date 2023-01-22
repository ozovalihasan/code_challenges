require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#partition' do
    examples.each_with_index do |s, index|
      it 'returns all possible palindrome partitioning of s' do
        expect(partition(s)).to match_array(results[index])
      end
    end
  end
end
