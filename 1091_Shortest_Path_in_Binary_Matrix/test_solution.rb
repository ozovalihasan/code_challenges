require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#shortest_path_binary_matrix' do
    examples.each_with_index do |grid, index|
      it "returns the length of the shortest clear path in the matrix." do
        expect(shortest_path_binary_matrix(grid)).to eq(results[index])
      end
    end
  end
end
