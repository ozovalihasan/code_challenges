require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#get_longest_subsequence' do
    examples.each_slice(2).each.with_index do |(words, groups), index|
      it 'returns the selected subsequence. If there are multiple answers, return any of them' do
        expect(get_longest_subsequence(words, groups)).to eq(results[index])
      end
    end
  end
end
