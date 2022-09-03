require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#nums_same_consec_diff' do
    examples.each_slice(2).each_with_index do |(n, k), index|
      it 'returns all non-negative integers of length n such that the absolute difference between every two consecutive digits is k' do
        expect(nums_same_consec_diff(n, k)).to match_array(results[index])
      end
    end
  end
end
