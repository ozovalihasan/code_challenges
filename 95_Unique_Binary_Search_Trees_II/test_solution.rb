require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#generate_trees' do
    examples.each_with_index do |n, index|
      it "returns all the structurally unique BST's (binary search trees)" do
        expect(generate_trees(n).map(&:to_a)).to match_array(results[index])
      end
    end
  end
end
