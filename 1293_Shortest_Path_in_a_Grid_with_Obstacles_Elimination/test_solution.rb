require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#largest_overlap' do
    examples.each_slice(2).each_with_index do |(grid, k), index|
      it "returns the minimum number of steps to walk" do
        expect(shortest_path(grid, k)).to eq(results[index])
      end
    end
  end
end
