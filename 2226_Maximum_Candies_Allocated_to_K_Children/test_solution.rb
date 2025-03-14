require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#maximum_candies' do
    examples.each_slice(2).each_with_index do |(candies, k), index|
      it 'returns the maximum number of candies each child can get' do
        expect(maximum_candies(candies, k)).to eq(results[index])
      end
    end
  end
end
