require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#to_hex' do
    examples.each_with_index do |num, index|
      it 'return a string representing its hexadecimal representation' do
        expect(to_hex(num)).to eq(results[index])
      end
    end
  end
end
