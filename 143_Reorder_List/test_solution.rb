require_relative './solution'
require_relative '../read_test_files'
require_relative 'linked_list'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#merge_in_between' do
    examples.each_with_index do |arr, index|
      it 'modifies a linked list to be on the expected form' do
        list = LinkedList.new(arr).head
        reordered_list = reorder_list(list)
        
        expect(reordered_list.to_a).to eq(results[index])
      end
    end
  end
end
