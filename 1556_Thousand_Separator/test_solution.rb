require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#thousand_separator' do
    examples.each_with_index do |n, index|
      it 'returns the given number in string format by adding dot' do
        expect(thousand_separator(n)).to eq(results[index])
      end
    end
  end
end
