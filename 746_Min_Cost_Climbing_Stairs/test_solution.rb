require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_cost_climbing_stairs' do
    examples.each_with_index do |cost, index|
      it 'returns the minimum cost to reach the top of the floor' do
        expect(min_cost_climbing_stairs(cost)).to eq(results[index])
      end
    end
  end
end
