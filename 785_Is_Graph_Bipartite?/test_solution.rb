require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#is_bipartite' do
    examples.each_with_index do |graph, index|
      it 'returns true if and only if it is bipartite' do
        expect(is_bipartite(graph)).to eq(results[index])
      end
    end
  end
end
