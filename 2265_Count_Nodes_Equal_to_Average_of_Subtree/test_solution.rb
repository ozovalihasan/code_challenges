require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#average_of_subtree' do
    examples.each_with_index do |arr, index|
      it 'returns the number of nodes where the value of the node is equal to the average of the values in its subtree' do
        tree = Tree.new(arr)
        expect(average_of_subtree(tree.root)).to eq(results[index])
      end
    end
  end
end
