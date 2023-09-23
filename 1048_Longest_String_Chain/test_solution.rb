require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#longest_str_chain' do
    examples.each_with_index do |words, index|
      it 'returns the length of the longest possible word chain with words chosen from the given list of words' do
        expect(longest_str_chain(words)).to eq(results[index])
      end
    end
  end
end
