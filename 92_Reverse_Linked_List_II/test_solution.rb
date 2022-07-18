require_relative './solution'
require_relative '../read_test_files'
require_relative 'linked_list'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#reverse_between' do
    examples.each_slice(3).each_with_index do |(arr, left, right), index|
      it 'returns a linked list by swapping its left and right nodes' do
        linked_list = LinkedList.new(arr)
        linked_list.head = reverse_between(linked_list.head, left, right)
        expect(linked_list.to_a).to eq(results[index])
      end
    end
  end
end
