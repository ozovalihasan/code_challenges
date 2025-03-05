require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#colored_cells' do
    examples.each_with_index do |num, index|
      it 'returns the number of colored cells at the end of num minutes' do
        expect(colored_cells(num)).to eq(results[index])
      end
    end
  end
end
