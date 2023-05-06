require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#num_subseq' do
    examples.each_slice(2).each_with_index do |(nums, target), index|
      it 'returns the number of non-empty subsequences of nums such that the sum of the minimum and maximum element on it is less or equal to target' do
        expect(num_subseq(nums, target)).to eq(results[index])
      end
    end
  end
end
