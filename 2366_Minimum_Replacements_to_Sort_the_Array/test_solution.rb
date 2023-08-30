require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#minimum_replacement' do
    examples.each_with_index do |nums, index|
      it "returns the minimum number of operations to make an array that is sorted in non-decreasing order" do
        expect(minimum_replacement(nums)).to eq(results[index])
      end
    end
  end
end
