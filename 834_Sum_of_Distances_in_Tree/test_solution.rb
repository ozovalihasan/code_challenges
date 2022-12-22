require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#sum_of_distances_in_tree' do
    examples.each_slice(2).each_with_index do |(n, edges), index|
      it 'returns an array answer of length n where answer[i] is the sum of the distances between the ith node in the tree and all other nodes' do
        expect(sum_of_distances_in_tree(n, edges)).to eq(results[index])
      end
    end
  end
end
