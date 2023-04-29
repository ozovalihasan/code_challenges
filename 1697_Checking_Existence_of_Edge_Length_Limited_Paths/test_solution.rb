require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#distance_limited_paths_exist' do
    examples.each_slice(3).each_with_index do |(n, edge_list, queries), index|
      it 'returns a boolean array answer, where answer.length == queries.length and the jth value of answer is true if there is a path for queries[j] is true, and false otherwise' do
        expect(distance_limited_paths_exist(n, edge_list, queries)).to eq(results[index])
      end
    end
  end
end
