require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#word_subsets' do
    examples.each_slice(2).each_with_index do |(words1, words2), index|
      it 'returns an array of subsets of the given arrays' do
        expect(word_subsets(words1, words2).intersection(results[index])).to eq(results[index])
      end
    end
  end
end
