require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#length_of_last_word' do
    examples.each_with_index do |str, index|
      it 'returns the length of the last word of the given string' do
        expect(length_of_last_word(str)).to eq(results[index])
      end
    end
  end
end
