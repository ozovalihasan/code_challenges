require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#is_same_tree' do
    examples.each_slice(2).each_with_index do |(root, start), index|
      it 'returns whether two binary trees are same or not' do
        tree = Tree.new(root)
        expect(amount_of_time(tree.root, start)).to eq(results[index])
      end
    end
  end
end
