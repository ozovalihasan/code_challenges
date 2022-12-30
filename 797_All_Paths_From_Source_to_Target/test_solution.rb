require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#all_paths_source_target' do
    examples.each_with_index do |graph, index|
      it "returns all possible paths from node 0 to node n - 1 in any order" do
        expect(all_paths_source_target(graph)).to match_array(results[index])
      end
    end
  end
end
