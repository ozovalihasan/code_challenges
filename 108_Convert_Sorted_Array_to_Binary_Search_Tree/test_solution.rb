require_relative './solution'
require_relative '../read_test_files'
require_relative 'binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#reverse_between' do
    examples.each_with_index do |nums, index|
      it 'returns an a height-balanced binary search tree converted from an integer array nums' do
        expect(sorted_array_to_bst(nums).to_a).to eq(results[index])
      end
    end
  end
end
