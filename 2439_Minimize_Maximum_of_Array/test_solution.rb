require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#minimize_array_value' do
    examples.each_with_index do |nums, index|
      it 'returns the minimum possible value of the maximum integer of nums after performing any number of operations' do
        expect(minimize_array_value(nums)).to eq(results[index])
      end
    end
  end
end
