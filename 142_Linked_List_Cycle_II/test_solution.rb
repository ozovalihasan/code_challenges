require_relative './solution'
require_relative '../read_test_files'
require_relative 'linked_list'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#detectCycle' do
    examples.each_slice(2).each_with_index do |(arr, pos), index|
      it 'returns the node where the cycle begins' do
        linked_list = LinkedList.new(arr)
        expect(detectCycle(linked_list.head)).to eq(results[index])
      end
    end
  end
end
