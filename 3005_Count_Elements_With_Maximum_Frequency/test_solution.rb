require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_frequency_elements' do
    examples.each_with_index do |nums, index|
      it 'returns the total frequencies of elements in nums such that those elements all have the maximum frequency' do
        expect(max_frequency_elements(nums)).to eq(results[index])
      end
    end
  end
end
