require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#buy_choco' do
    examples.each_slice(2).each_with_index do |(prices, money), index|
      it 'returns the amount of money you will have leftover after buying the two chocolates' do
        expect(buy_choco(prices, money)).to eq(results[index])
      end
    end
  end
end
