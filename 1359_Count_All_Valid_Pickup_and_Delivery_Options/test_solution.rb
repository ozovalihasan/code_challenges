require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_orders' do
    examples.each_with_index do |n, index|
      it 'returns the count of all valid pickup/delivery possible sequences such that delivery(i) is always after of pickup(i)' do
        expect(count_orders(n)).to eq(results[index])
      end
    end
  end
end
