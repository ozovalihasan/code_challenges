require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_smallest_set_of_vertices' do
    examples.each_slice(2).each_with_index do |(n, edges), index|
      it 'returns the smallest set of vertices from which all nodes in the graph are reachable' do
        expect(find_smallest_set_of_vertices(n, edges)).to eq(results[index])
      end
    end
  end
end
