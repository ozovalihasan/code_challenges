require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#minimum_fuel_cost' do
    examples.each_slice(2).each_with_index do |(letters, target), index|
      it 'returns the smallest character in letters that is lexicographically greater than target' do
        expect(next_greatest_letter(letters, target)).to eq(results[index])
      end
    end
  end
end
