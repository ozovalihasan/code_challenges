require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_good' do
    examples.each_slice(2).each_with_index do |(nums, k), index|
      it 'returns the number of good subarrays of nums' do
        expect(count_good(nums, k)).to eq(results[index])
      end
    end
  end
end
