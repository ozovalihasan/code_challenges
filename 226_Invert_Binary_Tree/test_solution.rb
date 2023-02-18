require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#invert_tree' do
    examples.each_with_index do |arr, index|
      it 'returns the root of the inverted tree' do
        tree = Tree.new(arr)
        invert_tree(tree.root)
        expect(tree.root.to_a).to eq(results[index])
      end
    end
  end
end
