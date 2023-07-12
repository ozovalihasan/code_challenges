require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#eventual_safe_nodes' do
    examples.each_with_index do |graph, index|
      it 'returns an array containing all the safe nodes of the graph' do
        expect(eventual_safe_nodes(graph)).to eq(results[index])
      end
    end
  end
end
