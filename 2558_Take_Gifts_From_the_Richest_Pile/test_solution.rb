require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#pick_gifts' do
    examples.each_slice(2).with_index do |(gifts, k), index|
      it 'returns the number of gifts remaining after k seconds' do
        expect(pick_gifts(gifts, k)).to eq(results[index])
      end
    end
  end
end
