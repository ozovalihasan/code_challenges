require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_probability' do
    examples.each_slice(5).each_with_index do |(n, edges, succ_prob, start_point, end_point), index|
      it 'returns the path with the maximum probability of success to go from start to end' do
        expect(max_probability(n, edges, succ_prob, start_point, end_point)).to eq(results[index])
      end
    end
  end
end
