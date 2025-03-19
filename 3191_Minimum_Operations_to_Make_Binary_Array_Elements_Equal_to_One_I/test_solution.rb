require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_operations' do
    examples.each_with_index do |nums, index|
      it 'returns the minimum number of operations required to make all elements in nums equal to 1' do
        expect(min_operations(nums)).to eq(results[index])
      end
    end
  end
end
