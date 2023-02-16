require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_depth' do
    examples.each_with_index do |arr, index|
      it 'returns its maximum depth' do
        tree = Tree.new(arr)
        expect(max_depth(tree.root)).to eq(results[index])
      end
    end
  end
end
