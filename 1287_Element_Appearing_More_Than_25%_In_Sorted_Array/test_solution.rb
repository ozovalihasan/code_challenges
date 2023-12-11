require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_special_integer' do
    examples.each_with_index do |arr, index|
      it 'returns the integer in the array that occurs more than 25% of the time' do
        expect(find_special_integer(arr)).to eq(results[index])
      end
    end
  end
end
