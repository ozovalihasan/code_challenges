require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#largest_variance' do
    examples.each_with_index do |s, index|
      it 'returns the largest variance possible among all substrings of s' do
        expect(largest_variance(s)).to eq(results[index])
      end
    end
  end
end
