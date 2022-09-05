require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#sum_of_left_leaves' do
    examples.each_with_index do |arr, index|
      it 'returns the sum of all left leaves' do
        tree = Tree.new(arr)
        expect(sum_of_left_leaves(tree.root)).to eq(results[index])
      end
    end
  end
end
