require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#vowel_strings' do
    examples.each_slice(2).each_with_index do |(words, queries), index|
      it 'returns an array ans of size queries.length' do
        expect(vowel_strings(words, queries)).to eq(results[index])
      end
    end
  end
end
