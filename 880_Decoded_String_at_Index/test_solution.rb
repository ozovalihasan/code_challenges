require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_subarrays' do
    examples.each_slice(2).each_with_index do |(s, k), index|
      it 'returns the kth letter (1-indexed) in the decoded string' do
        expect(decode_at_index(s, k)).to eq(results[index])
      end
    end
  end
end
