require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#move_zeroes' do
    examples.each_with_index do |nums, index|
      it 'returns an array by moving all zeroes to end' do
        move_zeroes(nums)
        expect(nums).to eq(results[index])
      end
    end
  end
end
