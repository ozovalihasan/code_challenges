require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#shortest_alternating_paths' do
    examples.each_slice(3).each_with_index do |(n, red_edges, blue_edges), index|
      it 'returns the number of distinct valid names for the company' do
        expect(shortest_alternating_paths(n, red_edges, blue_edges)).to eq(results[index])
      end
    end
  end
end
