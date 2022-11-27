require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#number_of_arithmetic_slices' do
    examples.each_with_index do |nums, index|
      it "returns the number of all the arithmetic subsequences of nums" do
        expect(number_of_arithmetic_slices(nums)).to eq(results[index])
      end
    end
  end
end
