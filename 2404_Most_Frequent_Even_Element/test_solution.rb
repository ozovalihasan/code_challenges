require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#most_frequent_even' do
    examples.each_with_index do |nums, index|
      it 'returns the most frequent even element' do
        expect(most_frequent_even(nums)).to eq(results[index])
      end
    end
  end
end
