require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_subarray_length' do
    examples.each_slice(2).each_with_index do |(nums, k), index|
      it 'returns the length of the longest good subarray of nums' do
        expect(max_subarray_length(nums, k)).to eq(results[index])
      end
    end
  end
end
