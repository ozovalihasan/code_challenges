require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_even_numbers' do
    examples.each_with_index do |digits, index|
      it 'returns a sorted array of the unique integers' do
        expect(find_even_numbers(digits)).to eq(results[index])
      end
    end
  end
end
