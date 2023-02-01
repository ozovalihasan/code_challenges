require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#gcd_of_strings' do
    examples.each_slice(2).each_with_index do |(str1, str2), index|
      it 'returns the largest string x such that x divides both str1 and str2' do
        expect(gcd_of_strings(str1, str2)).to eq(results[index])
      end
    end
  end
end
