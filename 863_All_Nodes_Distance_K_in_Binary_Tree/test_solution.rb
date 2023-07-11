require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#distance_k' do
    examples.each_slice(3).each_with_index do |(arr, target, k), index|
      it 'returns an array of the values of all nodes that have a distance k from the target node' do
        tree = Tree.new(arr)
        target_node = tree.find_by_val(target)
        expect(distance_k(tree.root, target_node, k)).to match_array(results[index])
      end
    end
  end
end
