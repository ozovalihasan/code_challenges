require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#are_numbers_ascending' do
    examples.each_with_index do |s, index|
      it 'returns whether all the numbers in s are strictly increasing from left to right' do
        expect(are_numbers_ascending(s)).to eq(results[index])
      end
    end
  end
end
