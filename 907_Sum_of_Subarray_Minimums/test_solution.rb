require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#sum_subarray_mins' do
    examples.each_with_index do |arr, index|
      it 'returns the sum of min(b), where b ranges over every (contiguous) subarray of arr' do
        expect(sum_subarray_mins(arr)).to eq(results[index])
      end
    end
  end
end
