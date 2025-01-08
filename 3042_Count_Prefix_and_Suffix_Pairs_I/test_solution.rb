require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_prefix_suffix_pairs' do
    examples.each_with_index do |words, index|
      it 'returns an integer denoting the number of index pairs (i, j) such that i < j, and isPrefixAndSuffix(words[i], words[j]) is true' do
        expect(count_prefix_suffix_pairs(words)).to eq(results[index])
      end
    end
  end
end
