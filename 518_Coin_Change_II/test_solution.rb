require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#change' do
    examples.each_slice(2).each_with_index do |(amount, coins), index|
      it 'returns the number of combinations that make up that amount' do
        expect(coins_change(amount, coins)).to eq(results[index])
      end
    end
  end
end
