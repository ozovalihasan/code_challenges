require_relative './solution'
require_relative '../read_test_files'
require_relative 'linked_list'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#swap_pairs' do
    examples.each_with_index do |arr, index|
      it 'returns the maximum twin sum of the linked list' do
        linked_list = LinkedList.new(arr)
        expect(pair_sum(linked_list.head)).to eq(results[index])
      end
    end
  end
end
