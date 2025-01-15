require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#minimize_xor' do
    examples.each_slice(2).each_with_index do |(num1, num2), index|
      it 'returns the integer x' do
        expect(minimize_xor(num1, num2)).to eq(results[index])
      end
    end
  end
end
