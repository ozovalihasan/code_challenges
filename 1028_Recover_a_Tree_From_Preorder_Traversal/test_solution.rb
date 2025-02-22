require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#recover_from_preorder' do
    examples.each_with_index do |traversal, index|
      it 'recovers the tree and return its root' do
        expect(recover_from_preorder(traversal).to_a).to eq(results[index])
      end
    end
  end
end
