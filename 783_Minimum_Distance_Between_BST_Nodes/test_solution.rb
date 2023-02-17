require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#is_same_tree' do
    examples.each_with_index do |arr, index|
      it 'returns the minimum difference between the values of any two different nodes in the tree.' do
        tree = Tree.new(arr)
        expect(min_diff_in_bst(tree.root)).to eq(results[index])
      end
    end
  end
end
