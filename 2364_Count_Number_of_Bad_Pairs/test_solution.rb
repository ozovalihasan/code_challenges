require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_bad_pairs' do
    examples.each_with_index do |nums, index|
      it 'returns the total number of bad pairs in nums' do
        expect(count_bad_pairs(nums)).to eq(results[index])
      end
    end
  end
end
