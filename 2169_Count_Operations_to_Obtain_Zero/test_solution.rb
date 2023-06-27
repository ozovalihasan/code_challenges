require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_operations' do
    examples.each_slice(2).each_with_index do |(num1, num2), index|
      it 'returns the number of operations required to make either num1 = 0 or num2 = 0' do
        expect(count_operations(num1, num2)).to eq(results[index])
      end
    end
  end
end
