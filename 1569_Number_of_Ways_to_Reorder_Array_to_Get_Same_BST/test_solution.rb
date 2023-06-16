require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#num_of_ways' do
    examples.each_with_index do |nums, index|
      it 'returns the number of ways to reorder nums such that the BST formed is identical to the original BST formed from nums' do
        expect(num_of_ways(nums)).to eq(results[index])
      end
    end
  end
end
