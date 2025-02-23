require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#construct_from_pre_post' do
    examples.each_slice(2).with_index do |(preorder, postorder), index|
      it 'returns the binary tree' do
        expect(construct_from_pre_post(preorder, postorder).to_a).to eq(results[index])
      end
    end
  end
end
