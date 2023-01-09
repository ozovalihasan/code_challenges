require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#intersection' do
    examples.each_slice(2).each_with_index do |(nums1, nums2), index|
      it 'returns an array of nums1 and nums2 intersection' do
        expect(intersection(nums1, nums2)).to match_array(results[index])
      end
    end
  end
end
