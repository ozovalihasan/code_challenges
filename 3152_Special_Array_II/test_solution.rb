require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#is_array_special' do
    examples.each_slice(2).with_index do |(nums, queries), index|
      it 'returns an array of booleans answer such that answer[i] is true if nums[from_i..to_i] is special' do
        expect(is_array_special(nums, queries)).to eq(results[index])
      end
    end
  end
end
