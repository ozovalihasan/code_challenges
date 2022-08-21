require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#is_rectangle_cover' do
    examples.each_with_index do |rectangles, index|
      it 'returns true if all the rectangles together form an exact cover of a rectangular region' do
        expect(is_rectangle_cover(rectangles)).to eq(results[index])
      end
    end
  end
end
    