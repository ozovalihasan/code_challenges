require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_num_edges_to_remove' do
    examples.each_slice(2).each_with_index do |(n, edges), index|
      it "returns the maximum number of edges you can remove, or return -1 if Alice and Bob cannot fully traverse the graph" do
        expect(max_num_edges_to_remove(n, edges)).to eq(results[index])
      end
    end
  end
end
