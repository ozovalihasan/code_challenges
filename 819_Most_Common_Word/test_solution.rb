require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#most_common_word' do
    examples.each_slice(2).each_with_index do |(paragraph, banned), index|
      it 'returns the most frequent word that is not banned' do
        expect(most_common_word(paragraph, banned)).to eq(results[index])
      end
    end
  end
end
