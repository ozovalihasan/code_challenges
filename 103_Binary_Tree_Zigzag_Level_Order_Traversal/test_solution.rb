require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#zigzag_level_order' do
    examples.each_with_index do |arr, index|
      it 'returns the root of the inverted tree' do
        tree = Tree.new(arr)
        expect(zigzag_level_order(tree.root)).to eq(results[index])
      end
    end
  end
end
