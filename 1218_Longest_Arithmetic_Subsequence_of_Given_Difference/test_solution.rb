require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#longest_subsequence' do
    examples.each_slice(2).each_with_index do |(arr, difference), index|
      it 'returns the length of the longest subsequence in arr' do
        expect(longest_subsequence(arr, difference)).to eq(results[index])
      end
    end
  end
end
