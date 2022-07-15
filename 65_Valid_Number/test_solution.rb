require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#is_number' do
    examples.each_with_index do |str, index|
      it 'returns whether the given string is a number or not' do
        expect(is_number(str)).to eq(results[index])
      end
    end
  end
end
