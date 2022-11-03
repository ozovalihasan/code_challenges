require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#check_subarray_sum' do
    examples.each_with_index do |words, index|
      it 'returns the length of the longest palindrome that you can create' do
        expect(longest_palindrome(words)).to eq(results[index])
      end
    end
  end
end
