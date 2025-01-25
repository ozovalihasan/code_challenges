require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#lexicographically_smallest_array' do
    examples.each_slice(2).each_with_index do |(nums, limit), index|
      it 'the lexicographically smallest array that can be obtained by performing the operation any number of times' do
        expect(lexicographically_smallest_array(nums, limit)).to eq(results[index])
      end
    end
  end
end
