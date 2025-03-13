require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_zero_array' do
    examples.each_slice(2).each_with_index do |(nums, queries), index|
      it 'returns the minimum possible non-negative value of k, such that after processing the first k queries in sequence, nums becomes a Zero Array' do
        expect(min_zero_array(nums, queries)).to eq(results[index])
      end
    end
  end
end
