require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#num_subarrays_with_sum' do
    examples.each_slice(2).each_with_index do |(nums, goal), index|
      it 'returns the number of non-empty subarrays with a sum goal' do
        expect(num_subarrays_with_sum(nums, goal)).to eq(results[index])
      end
    end
  end
end
