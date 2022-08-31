require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#common_chars' do
    examples.each_with_index do |words, index|
      it 'returns an array of all characters that show up in all strings within the words (including duplicates)' do
        expect(common_chars(words)).to match_array(results[index])
      end
    end
  end
end
