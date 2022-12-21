require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#possible_bipartition' do
    examples.each_slice(2).each_with_index do |(n, dislikes), index|
      it 'returns true if it is possible to split everyone into two groups in this way' do
        expect(possible_bipartition(n, dislikes)).to eq(results[index])
      end
    end
  end
end
