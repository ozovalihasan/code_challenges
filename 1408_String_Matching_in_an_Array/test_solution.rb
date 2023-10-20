require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#string_matching' do
    examples.each_with_index do |words, index|
      it 'returns all strings in words that is a substring of another word' do
        expect(string_matching(words)).to eq(results[index])
      end
    end
  end
end
