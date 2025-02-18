require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#smallest_number' do
    examples.each_with_index do |pattern, index|
      it 'returns the lexicographically smallest possible string num that meets the conditions' do
        expect(smallest_number(pattern)).to eq(results[index])
      end
    end
  end
end
