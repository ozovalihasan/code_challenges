require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#get_common' do
    examples.each_slice(2).each_with_index do |(nums1, nums2, k), index|
      it 'returns the minimum integer common to both arrays' do
        expect(get_common(nums1, nums2)).to eq(results[index])
      end
    end
  end
end
