require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_mode' do
    examples.each_with_index do |arr, index|
      it 'returns all the mode(s) (i.e., the most frequently occurred element) in the given binary search' do
        tree = Tree.new(arr)
        expect(find_mode(tree.root)).to match_array(results[index])
      end
    end
  end
end
