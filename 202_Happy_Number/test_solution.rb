require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#is_happy' do
    examples.each_with_index do |n, index|
      it 'returns true if n is a happy number, and false if not' do
        expect(is_happy(n)).to eq(results[index])
      end
    end
  end
end
