require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#build_tree' do
    examples.each_slice(2).each_with_index do |(inorder, postorder), index|
      it 'returns a binary tree constructed by using inorder and postorder arrays' do
        expect(build_tree(inorder, postorder).to_a).to eq(results[index])
      end
    end
  end
end
