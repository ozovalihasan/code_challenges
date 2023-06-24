require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#merge_similar_items' do
    examples.each_slice(2).each_with_index do |(items1, items2), index|
      it 'returns a 2D integer array ret where ret[i] = [value_i, weight_i], with weight_i being the sum of weights of all items with value value_i' do
        expect(merge_similar_items(items1, items2)).to eq(results[index])
      end
    end
  end
end
