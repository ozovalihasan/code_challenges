require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#maximum_difference' do
    examples.each_with_index do |nums, index|
      it "returns the maximum difference. If no such i and j exists, return -1" do
        expect(maximum_difference(nums)).to eq(results[index])
      end
    end
  end
end
