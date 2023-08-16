require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_sliding_window' do
    examples.each_slice(2).each_with_index do |(nums, k), index|
      it 'returns the max sliding window' do
        expect(max_sliding_window(nums, k)).to eq(results[index])
      end
    end
  end
end
