require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_uncrossed_lines' do
    examples.each_slice(2).each_with_index do |(nums1, nums2), index|
      it "returns the maximum number of connecting lines we can draw in this way" do
        expect(max_uncrossed_lines(nums1, nums2)).to eq(results[index])
      end
    end
  end
end
