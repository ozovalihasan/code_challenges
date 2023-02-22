require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#ship_within_days' do
    examples.each_slice(2).each_with_index do |(weights, days), index|
      it 'returns the least weight capacity of the ship that will result in all the packages on the conveyor belt being shipped within `days` days' do
        expect(ship_within_days(weights, days)).to eq(results[index])
      end
    end
  end
end
