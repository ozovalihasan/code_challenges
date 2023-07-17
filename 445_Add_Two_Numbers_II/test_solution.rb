require_relative './solution'
require_relative '../read_test_files'
require_relative 'linked_list'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#detectCycle' do
    examples.each_slice(2).each_with_index do |(l1, l2), index|
      it 'returns the node where the cycle begins' do
        linked_list1 = LinkedList.new(l1)
        linked_list2 = LinkedList.new(l2)
        
        expect(add_two_numbers(linked_list1.head, linked_list2.head).to_a).to eq(results[index])
      end
    end
  end
end
