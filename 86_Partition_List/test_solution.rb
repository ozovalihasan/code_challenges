require_relative './solution'
require_relative '../read_test_files'
require_relative 'linked_list'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#swap_pairs' do
    examples.each_slice(2).each_with_index do |(arr, x), index|
      it 'returns a linked list after partitioning' do
        linked_list = LinkedList.new(arr)
        linked_list.head = partition(linked_list.head, x)
        expect(linked_list.to_a).to eq(results[index])
      end
    end
  end
end
