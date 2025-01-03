require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#ways_to_split_array' do
    examples.each_with_index do |nums, index|
      it 'returns the number of valid splits in nums' do
        expect(ways_to_split_array(nums)).to eq(results[index])
      end
    end
  end
end
