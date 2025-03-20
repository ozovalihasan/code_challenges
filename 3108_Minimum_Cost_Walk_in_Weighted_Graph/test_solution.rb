require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#minimum_cost' do
    examples.each_slice(3).each_with_index do |(n, edges, query), index|
      it 'returns the array answer, where answer[i] denotes the minimum cost of a walk for query i' do
        expect(minimum_cost(n, edges, query)).to eq(results[index])
      end
    end
  end
end
