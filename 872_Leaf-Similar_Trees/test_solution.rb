require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#leaf_similar' do
    examples.each_slice(2).each_with_index do |(arr1, arr2), index|
      it 'returns the sum of values of all nodes with a value in the inclusive range [low, high]' do
        tree1 = Tree.new(arr1)
        tree2 = Tree.new(arr2)
        expect(leaf_similar(tree1.root, tree2.root)).to eq(results[index])
      end
    end
  end
end
