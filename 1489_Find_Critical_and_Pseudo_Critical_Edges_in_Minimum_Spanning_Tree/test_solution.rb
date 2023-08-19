require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_critical_and_pseudo_critical_edges' do
    examples.each_slice(2).each_with_index do |(n, edges), index|
      it "returns all the critical and pseudo-critical edges in the given graph's minimum spanning tree (MST)" do
        expect(find_critical_and_pseudo_critical_edges(n, edges)).to eq(results[index])
      end
    end
  end
end
