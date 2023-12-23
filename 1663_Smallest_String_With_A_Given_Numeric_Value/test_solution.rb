require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#get_smallest_string' do
    examples.each_slice(2).each_with_index do |(n, k), index|
      it 'returns the lexicographically smallest string with length equal to n and numeric value equal to k' do
        expect(get_smallest_string(n, k)).to eq(results[index])
      end
    end
  end
end
