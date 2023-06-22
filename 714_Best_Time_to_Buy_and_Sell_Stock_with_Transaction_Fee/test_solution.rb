require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_profit' do
    examples.each_slice(2).each_with_index do |(prices, fee), index|
      it 'returns the maximum profit you can achieve' do
        expect(max_profit(prices, fee)).to eq(results[index])
      end
    end
  end
end
