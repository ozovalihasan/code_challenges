require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#ways' do
    examples.each_slice(2).each_with_index do |(pizza, k), index|
      it 'returns the number of ways of cutting the pizza such that each piece contains at least one apple' do
        expect(ways(pizza, k)).to eq(results[index])
      end
    end
  end
end
