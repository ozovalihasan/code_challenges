require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#largest_odd_number' do
    examples.each_with_index do |num, index|
      it 'returns the largest-valued odd integer (as a string) that is a non-empty substring of num' do
        expect(largest_odd_number(num)).to eq(results[index])
      end
    end
  end
end
