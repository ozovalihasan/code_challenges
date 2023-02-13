require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_odds' do
    examples.each_slice(2).each_with_index do |(low, high), index|
      it 'returns the count of odd numbers between low and high' do
        expect(count_odds(low, high)).to eq(results[index])
      end
    end
  end
end
