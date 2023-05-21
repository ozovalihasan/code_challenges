require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#shortest_bridge' do
    examples.each_with_index do |grid, index|
      it "returns the smallest number of 0's you must flip to connect the two islands" do
        expect(shortest_bridge(grid)).to eq(results[index])
      end
    end
  end
end
