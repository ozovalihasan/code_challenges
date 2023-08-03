require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#letter_combinations' do
    examples.each_with_index do |digits, index|
      it 'returns the minimum number of liters of fuel to reach the capital city' do
        expect(letter_combinations(digits)).to match_array(results[index])
      end
    end
  end
end
