require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#is_prefix_of_word' do
    examples.each_slice(2).with_index do |(sentence, search_word), index|
      it 'returns the index of the word in sentence (1-indexed) where searchWord is a prefix of this word' do
        expect(is_prefix_of_word(sentence, search_word)).to eq(results[index])
      end
    end
  end
end
