require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#shortest_path_length' do
    examples.each_with_index do |graph, index|
      it "returns the length of the shortest path that visits every node" do
        expect(shortest_path_length(graph)).to eq(results[index])
      end
    end
  end
end
