require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_difference' do
    examples.each_slice(2).each_with_index do |(nums1, nums2), index|
      it 'returns a list of distinct and different elements' do
        expect(find_difference(nums1, nums2)).to eq(results[index])
      end
    end
  end
end
