require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#maximum_triplet_value' do
    examples.each_with_index do |nums, index|
      it "returns the maximum value over all triplets of indices (i, j, k) such that i < j < k" do
        expect(maximum_triplet_value(nums)).to eq(results[index])
      end
    end
  end
end
