require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_operations' do
    examples.each_slice(2).with_index do |(nums, limit), index|
      it 'returns the minimum number of operations needed so that all elements of the array are greater than or equal to k' do
        expect(min_operations(nums, limit)).to eq(results[index])
      end
    end
  end
end
