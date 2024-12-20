require_relative 'solution'
require_relative '../read_test_files'
require_relative 'binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#reverse_odd_levels' do
    examples.each_with_index do |arr, index|
      it 'returns the root of the reversed tree' do
        tree = Tree.new(arr)
        expect(reverse_odd_levels(tree.root).to_a).to eq(results[index])
      end
    end
  end
end
