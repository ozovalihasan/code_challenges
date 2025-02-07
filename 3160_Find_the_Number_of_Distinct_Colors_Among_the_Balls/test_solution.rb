require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#query_results' do
    examples.each_slice(2).each_with_index do |(limit, queries), index|
      it 'returns an array result of length n, where result[i] denotes the number of distinct colors after ith query' do
        expect(query_results(limit, queries)).to eq(results[index])
      end
    end
  end
end
