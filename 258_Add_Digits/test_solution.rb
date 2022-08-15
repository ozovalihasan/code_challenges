require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#add_digits' do
    examples.each_with_index do |num, index|
      it 'returns the total area covered by the two rectangles' do
        expect(add_digits(num)).to eq(results[index])
      end
    end
  end
end
