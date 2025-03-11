require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#number_of_substrings' do
    examples.each_with_index do |str, index|
      it 'returns the number of substrings containing at least one occurrence of all these characters a, b and c' do
        expect(number_of_substrings(str)).to eq(results[index])
      end
    end
  end
end
