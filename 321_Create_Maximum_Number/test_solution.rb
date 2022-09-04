require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_number' do
    examples.each_slice(3).each_with_index do |(nums1, nums2, k), index|
      it 'returns an array of the k digits representing the answer' do
        expect(max_number(nums1, nums2, k)).to eq(results[index])
      end
    end
  end
end
