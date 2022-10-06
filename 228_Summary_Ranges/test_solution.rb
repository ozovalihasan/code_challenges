require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#summary_ranges' do
    examples.each_with_index do |nums, index|
      it 'returns the smallest sorted list of ranges that cover all the numbers in the array exactly' do
        expect(summary_ranges(nums)).to eq(results[index])
      end
    end
  end
end
