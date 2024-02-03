require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_sum_after_partitioning' do
    examples.each_slice(2).each_with_index do |(arr, k), index|
      it "returns the largest sum of the given array after partitioning" do
        expect(max_sum_after_partitioning(arr, k)).to eq(results[index])
      end
    end
  end
end
