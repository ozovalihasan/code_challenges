require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#increasing_triplet' do
    examples.each_with_index do |nums, index|
      it 'returns true if there exists a triple of indices (i, j, k) such that i < j < k and nums[i] < nums[j] < nums[k]' do
        expect(increasing_triplet(nums)).to eq(results[index])
      end
    end
  end
end
