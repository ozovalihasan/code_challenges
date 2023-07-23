require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#knight_probability' do
    examples.each_with_index do |n, index|
      it 'returns a list of all possible full binary trees with n nodes' do
        expect(all_possible_fbt(n).map(&:to_a)).to match_array(results[index])
      end
    end
  end
end
