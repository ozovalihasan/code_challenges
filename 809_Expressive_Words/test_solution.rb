require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#expressive_words' do
    examples.each_slice(2).each_with_index do |(s, words), index|
      it 'returns the first numRows of Pascal"s triangle' do
        expect(expressive_words(s, words)).to eq(results[index])
      end
    end
  end
end
