require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#k_smallest_pairs' do
    examples.each_slice(3).each_with_index do |(nums1, nums2, k), index|
      it "returns the k pairs (u1, v1), (u2, v2), ..., (uk, vk) with the smallest sums" do
        expect(k_smallest_pairs(nums1, nums2, k)).to match_array(results[index])
      end
    end
  end
end
