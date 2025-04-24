require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_complete_subarrays' do
    examples.each_with_index do |nums, index|
      it 'returns the number of complete subarrays' do
        expect(count_complete_subarrays(nums)).to eq(results[index])
      end
    end
  end
end
