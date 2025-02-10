require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#clear_digits' do
    examples.each_with_index do |str, index|
      it 'returns the resulting string after removing all digits' do
        expect(clear_digits(str)).to eq(results[index])
      end
    end
  end
end
