require_relative './solution'
require_relative '../read_test_files'
require_relative 'linked_list'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#merge_k_lists' do
    examples.each_with_index do |lists, index|
      it 'returns a linked list built by merging all linked lists' do
        lists.map! {|arr| LinkedList.new(arr).head}
        p lists
        linked_list_node = merge_k_lists(lists)
        
        if linked_list_node
          expect(linked_list_node.to_a).to eq(results[index])
        else
          expect([]).to eq(results[index])
        end
      end
    end
  end
end
