require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#subarrays_with_k_distinct' do
    examples.each_slice(2).each_with_index do |(nums, k), index|
      it 'returns the label of the town judge if the town judge exists and can be identified, or returns -1 otherwise' do
        expect(subarrays_with_k_distinct(nums, k)).to eq(results[index])
      end
    end
  end
end
