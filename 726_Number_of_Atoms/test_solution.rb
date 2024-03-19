require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_of_atoms' do
    examples.each_with_index do |formula, index|
      it 'returns the count of all elements as a string in the following form' do
        expect(count_of_atoms(formula)).to eq(results[index])
      end
    end
  end
end
