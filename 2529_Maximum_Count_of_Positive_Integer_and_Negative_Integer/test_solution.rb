require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#maximum_count' do
    examples.each_with_index do |nums, index|
      it 'returns the maximum between the number of positive integers and the number of negative integers' do
        expect(maximum_count(nums)).to eq(results[index])
      end
    end
  end
end
