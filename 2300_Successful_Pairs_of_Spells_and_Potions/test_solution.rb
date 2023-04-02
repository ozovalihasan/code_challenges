require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#successful_pairs' do
    examples.each_slice(3).each_with_index do |(spells, potions, success), index|
      it 'returns an integer array pairs of length n where pairs[i] is the number of potions that will form a successful pair with the ith spell' do
        expect(successful_pairs(spells, potions, success)).to eq(results[index])
      end
    end
  end
end
