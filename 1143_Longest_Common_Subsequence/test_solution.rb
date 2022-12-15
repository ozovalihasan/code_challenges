require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#longest_common_subsequence' do
    examples.each_slice(2).each_with_index do |(text1, text2), index|
      it 'returns the length of their longest common subsequence' do
        expect(longest_common_subsequence(text1, text2)).to eq(results[index])
      end
    end
  end
end
