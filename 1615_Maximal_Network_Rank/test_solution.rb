require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#maximal_network_rank' do
    examples.each_slice(2).each_with_index do |(n, roads), index|
      it 'returns the maximal network rank of the entire infrastructure.' do
        expect(maximal_network_rank(n, roads)).to eq(results[index])
      end
    end
  end
end
