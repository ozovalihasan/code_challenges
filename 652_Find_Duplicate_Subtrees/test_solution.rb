require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_duplicate_subtrees' do
    examples.each_with_index do |arr, index|
      it 'returns all duplicate subtrees' do
        tree = Tree.new(arr)
        expect(find_duplicate_subtrees(tree.root).map(&:to_a)).to match_array(results[index])
      end
    end
  end
end
