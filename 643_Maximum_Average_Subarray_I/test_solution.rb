require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_max_average' do
    examples.each_slice(2).each_with_index do |(nums, k), index|
      it "returns the maximum average value of a contiguous subarray whose length is equal to k" do
        expect(find_max_average(nums, k)).to eq(results[index])
      end
    end
  end
end
