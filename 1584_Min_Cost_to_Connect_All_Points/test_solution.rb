require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_cost_connect_points' do
    examples.each_with_index do |points, index|
      it 'returns the minimum cost to make all points connected' do
        expect(min_cost_connect_points(points)).to eq(results[index])
      end
    end
  end
end
