require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_frequency' do
    examples.each_slice(2).each_with_index do |(nums, k), index|
      it 'returns the maximum possible frequency of an element after performing at most k operations' do
        expect(max_frequency(nums, k)).to eq(results[index])
      end
    end
  end
end
