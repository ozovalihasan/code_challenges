require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_cheapest_price' do
    examples.each_slice(5).each_with_index do |(n, flights, src, dst, k), index|
      it 'returns the cheapest price from src to dst with at most k stops' do
        expect(find_cheapest_price(n, flights, src, dst, k)).to eq(results[index])
      end
    end
  end
end
