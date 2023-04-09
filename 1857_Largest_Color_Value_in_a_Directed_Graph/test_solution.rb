require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#largest_path_value' do
    examples.each_slice(2).each_with_index do |(colors, edges), index|
      it 'returns the largest color value of any valid path in the given graph, or -1 if the graph contains a cycle' do
        expect(largest_path_value(colors, edges)).to eq(results[index])
      end
    end
  end
end
