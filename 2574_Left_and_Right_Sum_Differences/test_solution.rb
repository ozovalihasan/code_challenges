require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#left_right_difference' do
    examples.each_with_index do |nums, index|
      it "returns a 0-indexed integer array answer" do
        expect(left_right_difference(nums)).to eq(results[index])
      end
    end
  end
end
