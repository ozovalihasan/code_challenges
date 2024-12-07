require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#minimum_size' do
    examples.each_slice(2).with_index do |(nums, max_operations), index|
      it 'returns the minimum possible penalty after performing the operations' do
        expect(minimum_size(nums, max_operations)).to eq(results[index])
      end
    end
  end
end
