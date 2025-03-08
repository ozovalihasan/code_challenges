require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#minimum_recolors' do
    examples.each_slice(2).each_with_index do |(blocks, k), index|
      it "returns the minimum number of operations needed such that there is at least one occurrence of k consecutive black blocks" do
        expect(minimum_recolors(blocks, k)).to eq(results[index])
      end
    end
  end
end
