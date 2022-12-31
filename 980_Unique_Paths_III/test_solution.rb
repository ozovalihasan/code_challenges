require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#unique_paths_iii' do
    examples.each_with_index do |grid, index|
      it "returns the number of 4-directional walks from the starting square to the ending square,"\
        " that walk over every non-obstacle square exactly once" do
        expect(unique_paths_iii(grid)).to eq(results[index])
      end
    end
  end
end
