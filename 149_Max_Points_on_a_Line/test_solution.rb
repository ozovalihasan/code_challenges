require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_points' do
    examples.each_with_index do |points, index|
      it "returns the maximum number of points that lie on the same straight line" do
        expect(max_points(points)).to eq(results[index])
      end
    end
  end
end
