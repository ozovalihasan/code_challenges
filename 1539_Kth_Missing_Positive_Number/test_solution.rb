require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_kth_positive' do
    examples.each_slice(2).each_with_index do |(arr, k), index|
      it 'returns the kth positive integer that is missing from this array.' do
        expect(find_kth_positive(arr, k)).to eq(results[index])
      end
    end
  end
end
