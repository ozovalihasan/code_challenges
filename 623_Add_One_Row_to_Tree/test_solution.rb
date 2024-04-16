require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#add_one_row' do
    examples.each_slice(3).each_with_index do |(arr, val, depth), index|
      it 'returns whether the given tree is a mirror of itself or not' do
        tree = Tree.new(arr)
        expect(add_one_row(tree.root, val, depth).to_a).to eq(results[index])
      end
    end
  end
end
