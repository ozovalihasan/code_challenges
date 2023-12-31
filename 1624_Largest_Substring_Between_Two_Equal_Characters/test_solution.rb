require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_length_between_equal_characters' do
    examples.each_with_index do |s, index|
      it 'returns the length of the longest substring between two equal characters, excluding the two characters' do
        expect(max_length_between_equal_characters(s)).to eq(results[index])
      end
    end
  end
end
