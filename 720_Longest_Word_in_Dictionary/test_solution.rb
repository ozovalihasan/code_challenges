require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#longest_word' do
    examples.each_with_index do |words, index|
      it 'returns the longest word with the smallest lexicographical order' do
        expect(longest_word(words)).to eq(results[index])
      end
    end
  end
end
