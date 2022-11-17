require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#postorder_traversal' do
    examples.each_with_index do |arr, index|
      it "returns the postorder traversal of its nodes' values" do
        tree = Tree.new(arr)
        expect(postorder_traversal(tree.root)).to eq(results[index])
      end
    end
  end
end
