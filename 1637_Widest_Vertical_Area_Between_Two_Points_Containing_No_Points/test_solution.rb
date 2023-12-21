require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_width_of_vertical_area' do
    examples.each_with_index do |points, index|
      it "returns the widest vertical area between two points such that no points are inside the area" do
        expect(max_width_of_vertical_area(points)).to eq(results[index])
      end
    end
  end
end
