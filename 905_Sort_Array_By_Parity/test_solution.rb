require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#sort_array_by_parity' do
    examples.each_with_index do |nums, index|
      it 'returns any array that satisfies this condition' do
        expect(sort_array_by_parity(nums)).to eq(results[index])
      end
    end
  end
end
