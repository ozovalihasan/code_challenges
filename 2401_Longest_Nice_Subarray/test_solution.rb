require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#longest_nice_subarray' do
    examples.each_with_index do |nums, index|
      it "returns the length of the longest nice subarray" do
        expect(longest_nice_subarray(nums)).to eq(results[index])
      end
    end
  end
end
