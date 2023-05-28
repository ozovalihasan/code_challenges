require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_cost' do
    examples.each_slice(2).each_with_index do |(n, cuts), index|
      it 'returns the minimum total cost of the cuts' do
        expect(min_cost(n, cuts)).to eq(results[index])
      end
    end
  end
end
