require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_area_rect' do
    examples.each_with_index do |points, index|
      it "returns the minimum area of a rectangle formed from these points, with sides parallel to the X and Y axes" do
        expect(min_area_rect(points)).to eq(results[index])
      end
    end
  end
end
