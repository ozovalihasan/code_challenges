require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#can_be_valid' do
    examples.each_slice(2).each_with_index do |(str, locked), index|
      it 'returns true if you can make s a valid parentheses string' do
        expect(can_be_valid(str, locked)).to eq(results[index])
      end
    end
  end
end
