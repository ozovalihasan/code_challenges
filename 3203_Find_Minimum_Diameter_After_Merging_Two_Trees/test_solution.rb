require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#minimum_diameter_after_merge' do
    examples.each_slice(2).each_with_index do |(edges1, edges2), index|
      it 'returns the minimum possible diameter of the resulting tree' do
        expect(minimum_diameter_after_merge(edges1, edges2)).to eq(results[index])
      end
    end
  end
end
