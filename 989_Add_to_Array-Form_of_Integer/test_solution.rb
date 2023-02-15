require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#add_to_array_form' do
    examples.each_slice(2).each_with_index do |(num, k), index|
      it 'returns the array-form of the integer num + k' do
        expect(add_to_array_form(num, k)).to eq(results[index])
      end
    end
  end
end
