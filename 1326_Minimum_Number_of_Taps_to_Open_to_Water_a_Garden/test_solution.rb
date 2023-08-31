require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_taps' do
    examples.each_slice(2).each_with_index do |(n, ranges), index|
      it 'returns the minimum number of taps that should be open to water the whole garden' do
        expect(min_taps(n, ranges)).to eq(results[index])
      end
    end
  end
end
