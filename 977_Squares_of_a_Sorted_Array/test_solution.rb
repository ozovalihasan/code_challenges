require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#sorted_squares' do
    examples.each_with_index do |nums, index|
      it 'returns an array of the squares of each number sorted in non-decreasing order' do
        expect(sorted_squares(nums)).to eq(results[index])
      end
    end
  end
end
