require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#is_same_tree' do
    examples.each_slice(2).each_with_index do |(p, q), index|
      it 'returns whether two binary trees are same or not' do
        tree1 = Tree.new(p)
        tree2 = Tree.new(q)
        expect(is_same_tree(tree1.root, tree2.root)).to eq(results[index])
      end
    end
  end
end
