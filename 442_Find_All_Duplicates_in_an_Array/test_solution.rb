require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_duplicates' do
    examples.each_with_index do |nums, index|
      it 'returns an array of all the integers that appears twice' do
        expect(find_duplicates(nums)).to match_array(results[index])
      end
    end
  end
end
