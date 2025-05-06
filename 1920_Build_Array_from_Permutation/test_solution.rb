require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#build_array' do
    examples.each_with_index do |nums, index|
      it "returns an array ans of the same length where ans[i] = nums[nums[i]] for each 0 <= i < nums.length" do
        expect(build_array(nums)).to eq(results[index])
      end
    end
  end
end
