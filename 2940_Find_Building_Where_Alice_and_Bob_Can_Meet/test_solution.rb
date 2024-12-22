require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#leftmost_building_queries' do
    examples.each_slice(2).with_index do |(heights, queries), index|
      it 'returns an array ans where ans[i] is the index of the leftmost building where Alice and Bob can meet on the ith query' do
        expect(leftmost_building_queries(heights, queries)).to eq(results[index])
      end
    end
  end
end
