require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_ancestor_diff' do
    examples.each_with_index do |arr, index|
      it 'returns the maximum value v for which there exist different nodes a and b where v = |a.val - b.val| and a is an ancestor of b' do
        tree = Tree.new(arr)
        expect(max_ancestor_diff(tree.root)).to eq(results[index])
      end
    end
  end
end
