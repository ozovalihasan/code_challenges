require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#is_circular_sentence' do
    examples.each_slice(3).each_with_index do |(edges, node1, node2), index|
      it 'returns the index of the node that can be reached from both node1 and node2' do
        expect(closest_meeting_node(edges, node1, node2)).to eq(results[index])
      end
    end
  end
end
