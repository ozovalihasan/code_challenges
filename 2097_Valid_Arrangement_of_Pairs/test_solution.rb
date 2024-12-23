require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#valid_arrangement' do
    examples.each_with_index do |pairs, index|
      it 'returns any valid arrangement of pairs' do
        expect(valid_arrangement(pairs)).to eq(results[index])
      end
    end
  end
end
