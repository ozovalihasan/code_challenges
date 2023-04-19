require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#longest_zig_zag' do
    examples.each_with_index do |root, index|
      it 'returns the longest ZigZag path contained in that tree' do
        
        tree = Tree.new(root)
        expect(longest_zig_zag(tree.root)).to eq(results[index])
      end
    end
  end
end
