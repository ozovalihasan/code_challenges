require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#repeated_string_match' do
    examples.each_slice(2).each_with_index do |(a,b), index|
      it 'returns the minimum number of times you should repeat string a so that string b is a substring of it' do
        expect(repeated_string_match(a, b)).to eq(results[index])
      end
    end
  end
end
