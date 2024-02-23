require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#to_lower_case' do
    examples.each_with_index do |str, index|
      it 'returns the string after replacing every uppercase letter with the same lowercase letter' do
        expect(to_lower_case(str)).to eq(results[index])
      end
    end
  end
end
