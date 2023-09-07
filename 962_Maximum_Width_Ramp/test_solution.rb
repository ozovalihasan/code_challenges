require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_width_ramp' do
    examples.each_with_index do |nums, index|
      it 'returns the maximum width of a ramp in nums' do
        expect(max_width_ramp(nums)).to eq(results[index])
      end
    end
  end
end
