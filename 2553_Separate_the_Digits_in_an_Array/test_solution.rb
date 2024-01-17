require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#separate_digits' do
    examples.each_with_index do |nums, index|
      it "returns an array answer that consists of the digits of each integer in nums after separating them in the same order they appear in nums" do
        expect(separate_digits(nums)).to eq(results[index])
      end
    end
  end
end
