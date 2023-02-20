require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#replace_words' do
    examples.each_slice(2).each_with_index do |(dictionary, sentence), index|
      it 'returns the sentence after the replacement' do
        expect(replace_words(dictionary, sentence)).to eq(results[index])
      end
    end
  end
end
