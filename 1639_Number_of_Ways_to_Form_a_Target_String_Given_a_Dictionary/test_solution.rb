require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#num_ways' do
    examples.each_slice(2).each_with_index do |(words, target), index|
      it 'returns the number of ways to form target from words' do
        expect(num_ways(words, target)).to eq(results[index])
      end
    end
  end
end
