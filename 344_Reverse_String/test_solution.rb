require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#reverse_string' do
    examples.each_with_index do |s, index|
      it 'returns the reverse of the given array' do
        reverse_string(s)
        expect(s).to eq(results[index])
      end
    end
  end
end
