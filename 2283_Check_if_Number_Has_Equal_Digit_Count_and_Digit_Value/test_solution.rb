require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#digit_count' do
    examples.each_with_index do |num, index|
      it 'returns true if for every index i in the range 0 <= i < n' do
        expect(digit_count(num)).to eq(results[index])
      end
    end
  end
end
