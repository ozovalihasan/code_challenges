require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_length' do
    examples.each_slice(2).each_with_index do |(nums1, nums2), index|
      it 'returns the maximum profit you can achieve' do
        expect(find_length(nums1, nums2)).to eq(results[index])
      end
    end
  end
end
