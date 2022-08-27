require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#two_sum' do
    examples.each_slice(2).each_with_index do |(numbers, target), index|
      it 'returns the indices of the two numbers if the sum of them equals the target' do
        expect(two_sum(numbers, target)).to eq(results[index])
      end
    end
  end
end
