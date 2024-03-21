require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#is_possible_to_split' do
    examples.each_with_index do |nums, index|
      it 'returns true if it is possible to split the array' do
        expect(is_possible_to_split(nums)).to eq(results[index])
      end
    end
  end
end
