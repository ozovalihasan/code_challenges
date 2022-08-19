require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#num_equiv_domino_pairs' do
    examples.each_with_index do |dominoes, index|
      it 'returns the number of pairs which is equivalent to dominoes[j]' do
        expect(num_equiv_domino_pairs(dominoes)).to eq(results[index])
      end
    end
  end
end
