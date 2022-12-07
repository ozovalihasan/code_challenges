require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#range_sum_bst' do
    examples.each_slice(3).each_with_index do |(arr, low, high), index|
      it 'returns the sum of values of all nodes with a value in the inclusive range [low, high]' do
        tree = Tree.new(arr)
        expect(range_sum_bst(tree.root, low, high)).to eq(results[index])
      end
    end
  end
end
