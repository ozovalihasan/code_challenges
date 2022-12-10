require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_product' do
    examples.each_with_index do |arr, index|
      it 'returns the maximum product of the sums of the two subtrees' do
        tree = Tree.new(arr)
        expect(max_product(tree.root)).to eq(results[index])
      end
    end
  end
end
