require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_dot_product' do
    examples.each_slice(2).each_with_index do |(nums1, nums2), index|
      it "returns the maximum dot product between non-empty subsequences of nums1 and nums2 with the same length" do
        expect(max_dot_product(nums1, nums2)).to eq(results[index])
      end
    end
  end
end
