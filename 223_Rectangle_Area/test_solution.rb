require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#compute_area' do
    examples.each_slice(8).each_with_index do |(ax1, ay1, ax2, ay2, bx1, by1, bx2, by2), index|
      it 'returns the total area covered by the two rectangles' do
        expect(compute_area(ax1, ay1, ax2, ay2, bx1, by1, bx2, by2)).to eq(results[index])
      end
    end
  end
end
