require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#soup_servings' do
    examples.each_with_index do |n, index|
      it 'returns the probability that soup A will be empty first, plus half the probability that A and B become empty at the same time' do
        expect(soup_servings(n).round(5)).to eq(results[index])
      end
    end
  end
end
