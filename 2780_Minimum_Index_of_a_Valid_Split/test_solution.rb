require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_operations' do
    examples.each_with_index do |nums, index|
      it 'returns the minimum index of a valid split. If no valid split exists, return -1' do
        expect(minimum_index(nums)).to eq(results[index])
      end
    end
  end
end
