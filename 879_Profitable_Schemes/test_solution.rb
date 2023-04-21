require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#profitable_schemes' do
    examples.each_slice(4).each_with_index do |(n, min_profit, group, profit), index|
      it "returns the number of schemes that can be chosen" do
        expect(profitable_schemes(n, min_profit, group, profit)).to eq(results[index])
      end
    end
  end
end
