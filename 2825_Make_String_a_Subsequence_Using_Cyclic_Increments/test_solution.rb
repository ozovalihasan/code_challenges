require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#can_make_subsequence' do
    examples.each_slice(2).with_index do |(str1, str2), index|
      it 'returns true if it is possible to make str2 a subsequence of str1 by 
      performing the operation at most once, and false otherwise' do
        expect(can_make_subsequence(str1, str2)).to eq(results[index])
      end
    end
  end
end
