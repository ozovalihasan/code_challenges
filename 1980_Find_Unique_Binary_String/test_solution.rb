require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_different_binary_string' do
    examples.each_with_index do |nums, index|
      it "returns a binary string of length n that does not appear in nums" do
        expect(results[index]).to include(find_different_binary_string(nums))
      end
    end
  end
end
