require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#has_path_sum' do
    examples.each_slice(2).each_with_index do |(arr, target_sum), index|
      it 'returns true if target_sum can be equal to the sum of any path from the root to any leaf' do
        tree = Tree.new(arr)
        expect(has_path_sum(tree.root, target_sum)).to eq(results[index])
      end
    end
  end
end
