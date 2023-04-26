require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_closest_number' do
    examples.each_with_index do |nums, index|
      it 'returns the number with the value closest to 0 in nums' do
        expect(find_closest_number(nums)).to eq(results[index])
      end
    end
  end
end
