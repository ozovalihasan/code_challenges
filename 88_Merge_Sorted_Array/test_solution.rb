require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#merge' do
    examples.each_slice(4).each_with_index do |(nums1, m, nums2, n), index|
      it 'modifies the original array as a single array sorted in non-decreasing order' do
        merge(nums1, m, nums2, n)
        expect(nums1).to eq(results[index])
      end
    end
  end
end
