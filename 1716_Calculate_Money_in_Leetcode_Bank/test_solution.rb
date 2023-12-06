require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#total_money' do
    examples.each_with_index do |num, index|
      it "the total amount of money he will have in the Leetcode bank at the end of the nth day" do
        expect(total_money(num)).to eq(results[index])
      end
    end
  end
end
