require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#convert_temperature' do
    examples.each_with_index do |celsius, index|
      it 'returns the array ans = [kelvin, fahrenheit]' do
        expect(convert_temperature(celsius)).to eq(results[index])
      end
    end
  end
end
