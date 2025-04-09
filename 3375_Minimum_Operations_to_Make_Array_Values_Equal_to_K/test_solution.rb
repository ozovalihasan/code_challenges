require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#shortest_distance_after_queries' do
    examples.each_slice(2).each.with_index do |(nums, k), index|
      it 'returns the minimum number of operations required to make every element in nums equal to k' do
        expect(min_operations(nums, k)).to eq(results[index])
      end
    end
  end
end
  