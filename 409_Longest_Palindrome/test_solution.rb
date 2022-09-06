require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#longest_palindrome' do
    examples.each_with_index do |s, index|
      it 'return the length of the longest palindrome that can be built with the letters given' do
        expect(longest_palindrome(s)).to eq(results[index])
      end
    end
  end
end
