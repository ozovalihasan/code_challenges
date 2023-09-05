require_relative './solution'
require_relative '../read_test_files'
require_relative 'linked_list'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#copyRandomList' do
    examples.each_with_index do |arr, index|
      it 'returns the head of the copied linked list' do
        linked_list = LinkedList.new(arr)
        result = copyRandomList(linked_list.head)
        expect(result.to_a).to eq(results[index])
        (linked_list.head.extract_nodes).zip(result.extract_nodes) do |original_node, result_node|
          expect(original_node.object_id).not_to eq(result_node.object_id)
        end
      end
    end
  end
end
