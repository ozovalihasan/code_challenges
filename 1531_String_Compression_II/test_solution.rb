require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#get_length_of_optimal_compression' do
    examples.each_slice(2).each_with_index do |(s, k), index|
      it 'returns the minimum length of the run-length encoded version of s after deleting at most k characters' do
        expect(get_length_of_optimal_compression(s, k)).to eq(results[index])
      end
    end
  end
end
