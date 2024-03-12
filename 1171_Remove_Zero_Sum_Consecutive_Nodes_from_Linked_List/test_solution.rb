require_relative './solution'
require_relative '../read_test_files'
require_relative 'linked_list'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#remove_zero_sum_sublists' do
    examples.each_with_index do |arr, index|
      it 'returns the head of the final linked list' do
        linked_list = LinkedList.new(arr)
        list = remove_zero_sum_sublists(linked_list.head)
        expect(list.to_a).to eq(results[index])
      end
    end
  end
end
