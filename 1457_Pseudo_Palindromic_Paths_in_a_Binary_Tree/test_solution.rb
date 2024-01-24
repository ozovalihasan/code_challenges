require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#pseudo_palindromic_paths' do
    examples.each_with_index do |arr, index|
      it 'returns the number of pseudo-palindromic paths going from the root node to leaf nodes' do
        tree = Tree.new(arr)
        expect(pseudo_palindromic_paths(tree.root)).to eq(results[index])
      end
    end
  end
end
