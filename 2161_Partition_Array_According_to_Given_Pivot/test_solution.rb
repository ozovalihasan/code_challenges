require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#pivot_array' do
    examples.each_slice(2).each_with_index do |(nums, pivot), index|
      it 'returns nums after the rearrangement' do
        expect(pivot_array(nums, pivot)).to eq(results[index])
      end
    end
  end
end
