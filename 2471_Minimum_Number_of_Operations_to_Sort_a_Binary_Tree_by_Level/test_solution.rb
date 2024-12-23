require_relative 'solution'
require_relative '../read_test_files'
require_relative 'binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#minimum_operations' do
    examples.each_with_index do |arr, index|
      it 'returns the minimum number of operations needed to make the values at each level sorted in a strictly increasing order' do
        tree = Tree.new(arr)
        expect(minimum_operations(tree.root)).to eq(results[index])
      end
    end
  end
end
