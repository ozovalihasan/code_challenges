require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_bottom_left_value' do
    examples.each_with_index do |arr, index|
      it 'returns the leftmost value in the last row of the tree' do
        tree = Tree.new(arr)
        expect(find_bottom_left_value(tree.root)).to eq(results[index])
      end
    end
  end
end
