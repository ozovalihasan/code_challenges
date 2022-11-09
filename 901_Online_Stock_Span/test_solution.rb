require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#check_zero_ones' do
    examples.each_slice(2).each_with_index do |(actions, params), index|
      it "returns the number of stock prices higher than the current price" do
        stock = StockSpanner.new

        actions.zip(params).each_with_index do |(action, (param)), index2|
          if action == "next"
            expect(stock.next(param)).to eq(results[index][index2])
          end
        end

      end
    end
  end
end
