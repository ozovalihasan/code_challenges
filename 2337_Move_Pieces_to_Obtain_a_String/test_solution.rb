require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#can_change' do
    examples.each_slice(2).each_with_index do |(start, target), index|
      it 'returns true if it is possible to obtain the string target by moving the pieces of the string start any number of times' do
        expect(can_change(start, target)).to eq(results[index])
      end
    end
  end
end
