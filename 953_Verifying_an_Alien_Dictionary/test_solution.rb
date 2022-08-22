require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#is_alien_sorted' do
    examples.each_slice(2).each_with_index do |(words, order), index|
      it 'returns true if and only if the given words are sorted lexicographically in the alien language' do
        expect(is_alien_sorted(words, order)).to eq(results[index])
      end
    end
  end
end
