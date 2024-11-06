require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#can_sort_array' do
    examples.each_with_index do |nums, index|
      it 'returns the total frequencies of elements in nums such that those elements all have the maximum frequency' do
        expect(can_sort_array(nums)).to eq(results[index])
      end
    end
  end
end
