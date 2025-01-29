require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_redundant_connection' do
    examples.each_with_index do |edges, index|
      it 'returns an edge that can be removed so that the resulting graph is a tree of n nodes' do
        expect(find_redundant_connection(edges)).to eq(results[index])
      end
    end
  end
end
