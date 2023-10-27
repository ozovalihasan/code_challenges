require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#is_perfect_square' do
    examples.each_with_index do |num, index|
      it 'returns true if num is a perfect square or false otherwise' do
        expect(is_perfect_square(num)).to eq(results[index])
      end
    end
  end
end
