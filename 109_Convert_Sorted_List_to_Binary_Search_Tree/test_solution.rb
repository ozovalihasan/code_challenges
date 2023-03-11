require_relative './solution'
require_relative '../read_test_files'
require_relative 'linked_list'
require_relative 'binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#middle_node' do
    examples.each_with_index do |arr, index|
      it 'returns the middle node of the linked list' do
        linked_list = LinkedList.new(arr)
        bst_root = sorted_list_to_bst(linked_list.head)
        expect(bst_root.to_a).to eq(results[index])
      end
    end
  end
end
