require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_path_sum' do
    examples.each_with_index do |arr, index|
      it 'returns the maximum path sum of any non-empty path' do
        tree = Tree.new(arr)
        expect(max_path_sum(tree.root)).to eq(results[index])
      end
    end
  end
end
