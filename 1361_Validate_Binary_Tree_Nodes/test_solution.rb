require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#validate_binary_tree_nodes' do
    examples.each_slice(3).each_with_index do |(n, left_child, right_child), index|
      it "returns true if and only if all the given nodes form exactly one valid binary tree" do
        expect(validate_binary_tree_nodes(n, left_child, right_child)).to eq(results[index])
      end
    end
  end
end
