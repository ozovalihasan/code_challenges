require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#least_bricks' do
    examples.each_with_index do |wall, index|
      it "returns the minimum number of crossed bricks after drawing such a vertical line" do
        expect(least_bricks(wall)).to eq(results[index])
      end
    end
  end
end
