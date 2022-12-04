require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#minimum_average_difference' do
    examples.each_with_index do |nums, index|
      it 'returns the index with the minimum average difference' do
        expect(minimum_average_difference(nums)).to eq(results[index])
      end
    end
  end
end
