require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_sub_trees' do
    examples.each_slice(3).each_with_index do |(n, edges, labels), index|
      it "returns an array of size n where ans[i] is the number of nodes in the subtree of the ith node which have the same label as node i" do
        expect(count_sub_trees(n, edges, labels)).to eq(results[index])
      end
    end
  end
end
