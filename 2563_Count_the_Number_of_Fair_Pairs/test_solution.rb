require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_fair_pairs' do
    examples.each_slice(3).each_with_index do |(nums, lower, upper), index|
      it "returns the number of fair pairs" do
        expect(count_fair_pairs(nums, lower, upper)).to eq(results[index])
      end
    end
  end
end
