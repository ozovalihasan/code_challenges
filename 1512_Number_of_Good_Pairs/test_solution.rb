require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#num_identical_pairs' do
    examples.each_with_index do |nums, index|
      it 'returns the number of good pairs' do
        expect(num_identical_pairs(nums)).to eq(results[index])
      end
    end
  end
end
