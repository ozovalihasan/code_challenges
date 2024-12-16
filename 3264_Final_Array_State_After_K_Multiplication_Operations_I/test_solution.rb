require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#get_final_state' do
    examples.each_slice(3).each_with_index do |(nums, total_operation, multiplier), index|
      it 'returns an integer array denoting the final state of nums after performing all k operations' do
        expect(get_final_state(nums, total_operation, multiplier)).to eq(results[index])
      end
    end
  end
end
