require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_absolute_sum' do
    examples.each_with_index do |nums, index|
      it 'returns the maximum absolute sum of any (possibly empty) subarray of nums' do
        expect(max_absolute_sum(nums)).to eq(results[index])
      end
    end
  end
end
