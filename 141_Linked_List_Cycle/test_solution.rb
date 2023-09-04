require_relative './solution'
require_relative '../read_test_files'
require_relative 'linked_list'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#hasCycle' do
    examples.each_slice(2).each_with_index do |(arr, pos), index|
      it 'returns true if there is a cycle in the linked list' do
        linked_list = LinkedList.new(arr)

        unless pos == -1
          cursor = linked_list.head
          index2 = 0
          cycle_node = nil

          until cursor.next.nil?
            cycle_node = cursor if index2 == pos
            cursor = cursor.next
            index2 += 1
          end

          cursor.next = cycle_node
        end
        
        expect(hasCycle(linked_list.head)).to eq(results[index])
      end
    end
  end
end
