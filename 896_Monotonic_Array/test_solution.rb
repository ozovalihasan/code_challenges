require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#is_monotonic' do
    examples.each_with_index do |nums, index|
      it "returns true if the given array is monotonic, or false otherwise" do
        expect(is_monotonic(nums)).to eq(results[index])
      end
    end
  end
end
