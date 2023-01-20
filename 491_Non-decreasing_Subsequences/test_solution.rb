require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_subsequences' do
    examples.each_with_index do |nums, index|
      it 'returns all the different possible non-decreasing subsequences of the given array with at least two elements' do
        expect(find_subsequences(nums)).to match_array(results[index])
      end
    end
  end
end
