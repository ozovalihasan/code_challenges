require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#check_straight_line' do
    examples.each_with_index do |coordinates, index|
      it 'returns true if coordinates are on a line' do
        expect(check_straight_line(coordinates)).to eq(results[index])
      end
    end
  end
end
