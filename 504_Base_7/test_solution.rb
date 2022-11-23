require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#convert_to_base7' do
    examples.each_with_index do |num, index|
      it 'returns a string of its base 7 representation' do
        expect(convert_to_base7(num)).to eq(results[index])
      end
    end
  end
end
