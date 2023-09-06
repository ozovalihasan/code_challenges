require_relative './solution'
require_relative '../read_test_files'
require_relative 'linked_list'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#hasCycle' do
    examples.each_slice(2).each_with_index do |(arr, k), index|
      it 'returns true if there is a cycle in the linked list' do
        linked_list = LinkedList.new(arr)
        result = split_list_to_parts(linked_list.head, k).map {|linked_list| linked_list.to_a}
        expect(result).to eq(results[index])
      end
    end
  end
end
