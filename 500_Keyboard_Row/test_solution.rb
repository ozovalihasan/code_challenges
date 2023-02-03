require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_words' do
    examples.each_with_index do |words, index|
      it 'returns the words that can be typed using letters of the alphabet on only one row of American keyboard like the image below' do
        expect(find_words(words)).to eq(results[index])
      end
    end
  end
end
