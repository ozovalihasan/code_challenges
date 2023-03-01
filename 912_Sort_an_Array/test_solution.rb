require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#sort_array' do
    examples.each_with_index do |nums, index|
      it 'returns an array of integers nums by sorting in ascending order' do
        expect(sort_array(nums)).to eq(results[index])
      end
    end
  end
end
