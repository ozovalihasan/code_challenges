require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_substring' do
    examples.each_slice(2).each_with_index do |(s, words), index|
      it 'returns all start indexes of a concatenation of each word in words' do
        expect(find_substring(s, words)).to eq(results[index])
      end
    end
  end
end
