require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#longest_square_streak' do
    examples.each_with_index do |nums, index|
      it 'returns the length of the longest square streak in nums, or return -1 if there is no square streak' do
        expect(longest_square_streak(nums)).to eq(results[index])
      end
    end
  end
end
