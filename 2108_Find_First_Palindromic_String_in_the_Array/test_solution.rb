require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#first_palindrome' do
    examples.each_with_index do |words, index|
      it 'returns the first palindromic string in the array' do
        expect(first_palindrome(words)).to eq(results[index])
      end
    end
  end
end
