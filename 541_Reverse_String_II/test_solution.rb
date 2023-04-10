require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#reverse_str' do
    examples.each_slice(2).each_with_index do |(s, k), index|
      it 'returns the given string by reversing the first k characters for every 2k characters counting from the start of the string' do
        expect(reverse_str(s, k)).to eq(results[index])
      end
    end
  end
end
