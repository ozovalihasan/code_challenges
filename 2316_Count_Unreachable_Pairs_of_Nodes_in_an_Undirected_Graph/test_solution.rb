require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_pairs' do
    examples.each_slice(2).each_with_index do |(n, edges), index|
      it "returns the number of pairs of different nodes that are unreachable from each other" do
        expect(count_pairs(n, edges)).to eq(results[index])
      end
    end
  end
end
