require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#smaller_numbers_than_current' do
    examples.each_with_index do |nums, index|
      it "returns the answer in an array" do
        expect(smaller_numbers_than_current(nums)).to eq(results[index])
      end
    end
  end
end
