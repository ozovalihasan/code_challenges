require_relative './solution'
require_relative '../read_test_files'
require_relative 'linked_list'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#swap_pairs' do
    examples.each_with_index do |arr, index|
      it 'returns a rotated list' do
        linked_list = LinkedList.new(arr)
        linked_list.head = swap_pairs(linked_list.head)
        expect(linked_list.to_a).to eq(results[index])
      end
    end
  end
end
