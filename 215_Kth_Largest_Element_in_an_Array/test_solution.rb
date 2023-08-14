require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_kth_largest' do
    examples.each_slice(2).each_with_index do |(nums, k), index|
      it 'returns the kth largest element in the array' do
        expect(find_kth_largest(nums, k)).to eq(results[index])
      end
    end
  end
end
