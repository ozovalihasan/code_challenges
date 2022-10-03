require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#island_perimeter' do
    examples.each_with_index do |grid, index|
      it "returns the perimeter of the island" do
        expect(island_perimeter(grid)).to eq(results[index])
      end
    end
  end
end
