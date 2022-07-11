require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#jump' do
    examples.each_with_index do |nums, index|
      it 'returns the minimum number of jumps to reach the last index' do
        expect(jump(nums)).to eq(results[index])
      end
    end
  end
end
