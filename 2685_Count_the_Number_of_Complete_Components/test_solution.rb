require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#minimum_cost' do
    examples.each_slice(2).each_with_index do |(num, edges), index|
      it 'returns the number of complete connected components of the graph' do
        expect(count_complete_components(num, edges)).to eq(results[index])
      end
    end
  end
end
