require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_num_edges_to_remove' do
    examples.each_slice(3).each_with_index do |(costs, k, candidates), index|
      it "returns the total cost to hire exactly k workers" do
        expect(total_cost(costs, k, candidates)).to eq(results[index])
      end
    end
  end
end
