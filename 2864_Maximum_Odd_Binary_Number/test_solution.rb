require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#maximum_odd_binary_number' do
    examples.each_with_index do |s, index|
      it 'returns a string representing the maximum odd binary number that can be created from the given combination' do
        expect(maximum_odd_binary_number(s)).to eq(results[index])
      end
    end
  end
end
