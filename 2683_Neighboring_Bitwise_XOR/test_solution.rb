require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#does_valid_array_exist' do
    examples.each_with_index do |derived, index|
      it 'returns true if such an array exists or false otherwise' do
        expect(does_valid_array_exist(derived)).to eq(results[index])
      end
    end
  end
end
