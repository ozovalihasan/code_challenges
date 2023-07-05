require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#longest_subarray' do
    examples.each_with_index do |nums, index|
      it "return the size of the longest non-empty subarray containing only 1's in the resulting array" do
        expect(longest_subarray(nums)).to eq(results[index])
      end
    end
  end
end
