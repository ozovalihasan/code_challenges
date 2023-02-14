require_relative './solution'
require_relative '../read_test_files'
require_relative 'linked_list'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#delete_node' do
    examples.each_slice(2).each_with_index do |(arr, node_val_deleted), index|
      it 'returns a linked list by swapping its left and right nodes' do
        linked_list = LinkedList.new(arr)
        node = linked_list.head
        
        until node.val == node_val_deleted
          node = node.next
        end

        delete_node(node)
        expect(linked_list.to_a).to eq(results[index])
      end
    end
  end
end
