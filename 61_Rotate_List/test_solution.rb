require_relative './solution'
require_relative '../read_test_files'
require_relative 'linked_list'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#rotate_right' do
    examples.each_slice(2).each_with_index do |(arr, k), index|
      it 'returns a rotated list' do
        linked_list = LinkedList.new(arr)
        linked_list.head = rotate_right(linked_list.head, k)
        expect(linked_list.to_a).to eq(results[index])
      end
    end
  end
end
