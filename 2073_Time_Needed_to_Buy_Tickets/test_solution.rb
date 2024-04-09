require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#time_required_to_buy' do
    examples.each_slice(2).each_with_index do |(tickets, k), index|
      it "returns the time taken for the person at position k (0-indexed) to finish buying tickets" do
        expect(time_required_to_buy(tickets, k)).to eq(results[index])
      end
    end
  end
end
