require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#subarrays_div_by_k' do
    examples.each_slice(2).each_with_index do |(nums, k), index|
      it 'returns the number of non-empty subarrays that have a sum divisible by k' do
        expect(subarrays_div_by_k(nums, k)).to eq(results[index])
      end
    end
  end
end
