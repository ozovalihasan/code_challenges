require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#is_valid' do
    examples.each_with_index do |s, index|
      it 'returns the input string is valid or not' do
        expect(is_valid(s)).to eq(results[index])
      end
    end
  end
end
