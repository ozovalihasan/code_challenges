require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#maximum_beauty' do
    examples.each_slice(2).with_index do |(nums, range_diff), index|
      it 'returns the maximum possible beauty of the array nums after applying the operation any number of times' do
        expect(maximum_beauty(nums, range_diff)).to eq(results[index])
      end
    end
  end
end
