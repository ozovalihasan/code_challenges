require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_palindromic_subsequence' do
    examples.each_with_index do |str, index|
      it 'returns the number of unique palindromes of length three that are a subsequence of s' do
        expect(count_palindromic_subsequence(str)).to eq(results[index])
      end
    end
  end
end
