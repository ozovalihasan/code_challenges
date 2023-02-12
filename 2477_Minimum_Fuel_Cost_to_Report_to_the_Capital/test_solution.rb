require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#minimum_fuel_cost' do
    examples.each_slice(2).each_with_index do |(roads, seats), index|
      it 'returns the minimum number of liters of fuel to reach the capital city' do
        expect(minimum_fuel_cost(roads, seats)).to eq(results[index])
      end
    end
  end
end
