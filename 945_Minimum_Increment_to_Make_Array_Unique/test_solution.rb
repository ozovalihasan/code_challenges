require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_increment_for_unique' do
    examples.each_with_index do |nums, index|
      it "returns the minimum number of moves to make every value in nums unique" do
        expect(min_increment_for_unique(nums)).to eq(results[index])
      end
    end
  end
end
