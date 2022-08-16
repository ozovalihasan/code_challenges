require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#is_rectangle_overlap' do
    examples.each_slice(2).each_with_index do |(rec1, rec2), index|
      it 'returns true if two rectangles overlap' do
        expect(is_rectangle_overlap(rec1, rec2)).to eq(results[index])
      end
    end
  end
end
