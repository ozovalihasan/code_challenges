require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#remove_occurrences' do
    examples.each_slice(2).each_with_index do |(str, part), index|
      it 'returns s after removing all occurrences of part' do
        expect(remove_occurrences(str, part)).to eq(results[index])
      end
    end
  end
end
