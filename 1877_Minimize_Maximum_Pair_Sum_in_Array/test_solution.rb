require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_pair_sum' do
    examples.each_with_index do |nums, index|
      it "returns the minimized maximum pair sum after optimally pairing up the elements" do
        expect(min_pair_sum(nums)).to eq(results[index])
      end
    end
  end
end
