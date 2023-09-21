require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_median_sorted_arrays' do
    examples.each_slice(2).each_with_index do |(nums1, nums2), index|
      it "returns the median of the two sorted arrays" do
        expect(find_median_sorted_arrays(nums1, nums2)).to eq(results[index])
      end
    end
  end
end
