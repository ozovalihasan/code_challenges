require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#lca_deepest_leaves' do
    examples.each_with_index do |arr, index|
      it 'returns the sum of values of all nodes with a value in the inclusive range [low, high]' do
        tree = Tree.new(arr)
        expect(lca_deepest_leaves(tree.root).to_a).to eq(results[index])
      end
    end
  end
end
