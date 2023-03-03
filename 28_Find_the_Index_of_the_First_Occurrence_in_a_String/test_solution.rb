require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#str_str' do
    examples.each_slice(2).each_with_index do |(haystack, needle), index|
      it 'returns the index of the first occurrence of needle in haystack' do
        expect(str_str(haystack, needle)).to eq(results[index])
      end
    end
  end
end
