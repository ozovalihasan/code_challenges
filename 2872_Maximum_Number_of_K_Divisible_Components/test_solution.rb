require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_k_divisible_components' do
    examples.each_slice(4).each_with_index do |(node_count, edges, values, val_to_divide), index|
      it 'returns the maximum number of components in any valid split' do
        expect(max_k_divisible_components(node_count, edges, values, val_to_divide)).to eq(results[index])
      end
    end
  end
end
