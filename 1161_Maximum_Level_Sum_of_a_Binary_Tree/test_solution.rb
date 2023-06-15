require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#invert_tree' do
    examples.each_with_index do |arr, index|
      it 'returns the smallest level x such that the sum of all the values of nodes at level x is maximal' do
        tree = Tree.new(arr)
        expect(max_level_sum(tree.root)).to eq(results[index])
      end
    end
  end
end
