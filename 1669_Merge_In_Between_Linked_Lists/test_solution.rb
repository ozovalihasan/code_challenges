require_relative './solution'
require_relative '../read_test_files'
require_relative 'linked_list'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#merge_in_between' do
    examples.each_slice(4).each_with_index do |(list1, a, b, list2), index|
      it 'returns a linked list built by merging all linked lists' do
        
        linked_list1 = LinkedList.new(list1).head
        linked_list2 = LinkedList.new(list2).head
        linked_list_result = merge_in_between(linked_list1, a, b, linked_list2)
        
        expect(linked_list_result.to_a).to eq(results[index])
      end
    end
  end
end
