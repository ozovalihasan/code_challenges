require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#largest_values' do
    examples.each_with_index do |arr, index|
      it 'returns an array of the largest value in each row of the tree (0-indexed)' do
        tree = Tree.new(arr)
        expect(largest_values(tree.root)).to eq(results[index])
      end
    end
  end
end
