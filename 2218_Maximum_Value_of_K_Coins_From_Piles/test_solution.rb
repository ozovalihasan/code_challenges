require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_value_of_coins' do
    examples.each_slice(2).each_with_index do |(piles, k), index|
      it "returns the maximum total value of coins you can have in your wallet if you choose exactly k coins optimally" do
        expect(max_value_of_coins(piles, k)).to eq(results[index])
      end
    end
  end
end
