require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_profit' do
    examples.each_with_index do |prices, index|
      it "returns the maximum profit you can achieve from this transaction" do
        expect(max_profit(prices)).to eq(results[index])
      end
    end
  end
end
