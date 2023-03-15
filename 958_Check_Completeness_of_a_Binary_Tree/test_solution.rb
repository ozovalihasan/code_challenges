require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#is_complete_tree' do
    examples.each_with_index do |arr, index|
      it 'returns if the given tree is a complete binary tree' do
        tree = Tree.new(arr)
        expect(is_complete_tree(tree.root)).to eq(results[index])
      end
    end
  end
end
