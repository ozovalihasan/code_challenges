require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_depth' do
    examples.each_with_index do |arr, index|
      it 'returns the minimum depth of a binary tree' do
        tree = Tree.new(arr)
        expect(min_depth(tree.root)).to eq(results[index])
      end
    end
  end
end
