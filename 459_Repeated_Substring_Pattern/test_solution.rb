require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#repeated_substring_pattern' do
    examples.each_with_index do |s, index|
      it 'returns true if a substring of the given string repeats two or more times' do
        expect(repeated_substring_pattern(s)).to eq(results[index])
      end
    end
  end
end
