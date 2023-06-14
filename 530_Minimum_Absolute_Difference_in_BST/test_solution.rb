require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

        


describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#get_minimum_difference' do
    examples.each_with_index do |arr, index|
      it 'returns the minimum absolute difference between the values of any two different nodes in the tree' do
        tree = Tree.new(arr)
        
        expect(get_minimum_difference(tree.root)).to eq(results[index])
      end
    end
  end
end
