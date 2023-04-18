require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#merge_alternately' do
    examples.each_slice(2).each_with_index do |(word1, word2), index|
      it 'returns the merged string' do
        expect(merge_alternately(word1, word2)).to eq(results[index])
      end
    end
  end
end
