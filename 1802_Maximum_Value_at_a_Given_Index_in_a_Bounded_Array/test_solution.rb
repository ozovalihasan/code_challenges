require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_value' do
    examples.each_slice(3).each_with_index do |(n, arr_index, max_sum), index|
      it 'returns nums[index] of the constructed array' do
        expect(max_value(n, arr_index, max_sum)).to eq(results[index])
      end
    end
  end
end
