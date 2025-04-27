require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_subarrays' do
    examples.each_with_index do |nums, index|
      it "returns the number of of length 3 such that the sum of the first and third numbers equals exactly half of the second number" do
        expect(count_subarrays(nums)).to eq(results[index])
      end
    end
  end
end
