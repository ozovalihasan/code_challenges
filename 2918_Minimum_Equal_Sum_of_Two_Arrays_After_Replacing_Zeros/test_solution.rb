require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_sum' do
    examples.each_slice(2).each_with_index do |(nums1, nums2), index|
      it 'returns the minimum equal sum you can obtain, or -1 if it is impossible' do
        expect(min_sum(nums1, nums2)).to eq(results[index])
      end
    end
  end
end
