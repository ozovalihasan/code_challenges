require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#reverse_vowels' do
    examples.each_with_index do |s, index|
      it 'returns a string by reversing only all the vowels' do
        expect(reverse_vowels(s)).to eq(results[index])
      end
    end
  end
end
