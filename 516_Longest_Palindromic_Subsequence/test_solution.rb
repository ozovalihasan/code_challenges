require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#longest_palindrome_subseq' do
    examples.each_with_index do |s, index|
      it "the longest palindromic subsequence's length in s" do
        expect(longest_palindrome_subseq(s)).to eq(results[index])
      end
    end
  end
end
