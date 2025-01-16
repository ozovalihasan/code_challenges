require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#xor_all_nums' do
    examples.each_slice(2).each_with_index do |(nums1, nums2), index|
      it 'returns the bitwise XOR of all integers in nums3' do
        expect(xor_all_nums(nums1, nums2)).to eq(results[index])
      end
    end
  end
end
