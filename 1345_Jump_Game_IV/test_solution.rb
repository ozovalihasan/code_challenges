require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_jumps' do
    examples.each_with_index do |arr, index|
      it 'returns the index of the node that can be reached from both node1 and node2' do
        expect(min_jumps(arr)).to eq(results[index])
      end
    end
  end
end
