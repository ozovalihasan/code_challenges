require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#sum_numbers' do
    examples.each_with_index do |arr, index|
      it 'returns the total sum of all root-to-leaf numbers' do
        tree = Tree.new(arr)
        expect(sum_numbers(tree.root)).to eq(results[index])
      end
    end
  end
end
