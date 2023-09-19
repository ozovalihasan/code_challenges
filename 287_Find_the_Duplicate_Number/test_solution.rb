require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_duplicate' do
    examples.each_with_index do |nums, index|
      it "returns the repeated number" do
        expect(find_duplicate(nums)).to eq(results[index])
      end
    end
  end
end
