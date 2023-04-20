require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#width_of_binary_tree' do
    examples.each_with_index do |arr, index|
      it 'returns the maximum width of the given tree' do
        tree = Tree.new(arr)
        expect(width_of_binary_tree(tree.root)).to eq(results[index])
      end
    end
  end
end
