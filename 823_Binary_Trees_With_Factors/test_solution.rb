require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#num_factored_binary_trees' do
    examples.each_with_index do |arr, index|
      it 'returns the number of binary trees we can make' do
        expect(num_factored_binary_trees(arr)).to eq(results[index])
      end
    end
  end
end
