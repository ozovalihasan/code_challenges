require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#smallest_from_leaf' do
    examples.each_with_index do |arr, index|
      it 'returns the lexicographically smallest string that starts at a leaf of this tree and ends at the root' do
        tree = Tree.new(arr)
        expect(smallest_from_leaf(tree.root)).to eq(results[index])
      end
    end
  end
end
