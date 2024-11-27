require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#shortest_distance_after_queries' do
    examples.each_slice(2).each.with_index do |(city_number, queries), index|
      it 'returns an array answer where for each i in the range [0, queries.length - 1], 
        answer[i] is the length of the shortest path from city 0 to city n - 1 
        after processing the first i + 1 queries' do
        expect(shortest_distance_after_queries(city_number, queries)).to eq(results[index])
      end
    end
  end
end
