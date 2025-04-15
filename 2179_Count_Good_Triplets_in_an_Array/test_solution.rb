require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#good_triplets' do
    examples.each_slice(2).each_with_index do |(nums1, nums2), index|
      it 'returns the total number of good triplets' do
        expect(good_triplets(nums1, nums2)).to eq(results[index])
      end
    end
  end
end
