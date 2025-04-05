require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#subset_xor_sum' do
    examples.each_with_index do |nums, index|
      it "returns the sum of all XOR totals for every subset of nums" do
        expect(subset_xor_sum(nums)).to eq(results[index])
      end
    end
  end
end
