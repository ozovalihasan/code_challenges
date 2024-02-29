require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#is_even_odd_tree' do
    examples.each_with_index do |arr, index|
      it 'returns true if the binary tree is Even-Odd' do
        tree = Tree.new(arr)
        expect(is_even_odd_tree(tree.root)).to eq(results[index])
      end
    end
  end
end
