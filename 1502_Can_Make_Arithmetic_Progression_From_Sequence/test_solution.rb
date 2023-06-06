require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#can_make_arithmetic_progression' do
    examples.each_with_index do |arr, index|
      it 'returns true if the array can be rearranged to form an arithmetic progression' do
        expect(can_make_arithmetic_progression(arr)).to eq(results[index])
      end
    end
  end
end
