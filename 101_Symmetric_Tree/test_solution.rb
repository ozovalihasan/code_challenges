require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#is_symmetric' do
    examples.each_with_index do |arr, index|
      it 'returns whether the given tree is a mirror of itself or not' do
        tree = Tree.new(arr)
        expect(is_symmetric(tree.root)).to eq(results[index])
      end
    end
  end
end
