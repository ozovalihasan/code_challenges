require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#sort_vowels' do
    examples.each_with_index do |str, index|
      it 'returns the resulting string by sorting vowels' do
        expect(sort_vowels(str)).to eq(results[index])
      end
    end
  end
end
