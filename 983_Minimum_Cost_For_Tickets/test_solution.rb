require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#mincost_tickets' do
    examples.each_slice(2).each_with_index do |(days, costs), index|
      it "returns the minimum number of dollars you need to travel every day in the given list of days" do
        expect(mincost_tickets(days, costs)).to eq(results[index])
      end
    end
  end
end
