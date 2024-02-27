require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_middle_index' do
    examples.each_with_index do |nums, index|
      it "returns the leftmost middleIndex that satisfies the condition" do
        expect(find_middle_index(nums)).to eq(results[index])
      end
    end
  end
end
