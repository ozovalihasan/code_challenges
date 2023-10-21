require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#constrained_subset_sum' do
    examples.each_slice(2).each_with_index do |(nums, k), index|
      it "returns the maximum sum of a non-empty subsequence of that array such that for every two consecutive integers in the subsequence" do
        expect(constrained_subset_sum(nums, k)).to eq(results[index])
      end
    end
  end
end
