require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_operations' do
    examples.each_with_index do |nums, index|
      it 'returns the minimum number of operations to make nums continuous' do
        expect(min_operations(nums)).to eq(results[index])
      end
    end
  end
end
