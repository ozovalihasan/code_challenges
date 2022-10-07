require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_max_consecutive_ones' do
    examples.each_with_index do |nums, index|
      it "returns the maximum number of consecutive 1's in the array" do
        expect(find_max_consecutive_ones(nums)).to eq(results[index])
      end
    end
  end
end
