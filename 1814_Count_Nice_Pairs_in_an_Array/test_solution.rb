require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_nice_pairs' do
    examples.each_with_index do |nums, index|
      it 'returns the number of nice pairs of indices' do
        expect(count_nice_pairs(nums)).to eq(results[index])
      end
    end
  end
end
