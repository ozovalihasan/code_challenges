require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#strange_printer' do
    examples.each_with_index do |s, index|
      it 'returns the minimum number of turns the printer needed to print it' do
        expect(strange_printer(s)).to eq(results[index])
      end
    end
  end
end
