require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_interesting_subarrays' do
    examples.each_slice(3).each_with_index do |(nums, modulo, k), index|
      it 'returns an integer denoting the count of interesting subarrays' do
        expect(count_interesting_subarrays(nums, modulo, k)).to eq(results[index])
      end
    end
  end
end
