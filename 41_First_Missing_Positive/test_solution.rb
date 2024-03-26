require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#first_missing_positive' do
    examples.each_with_index do |nums, index|
      it 'returns the smallest positive integer that is not present in nums' do
        expect(first_missing_positive(nums)).to eq(results[index])
      end
    end
  end
end
