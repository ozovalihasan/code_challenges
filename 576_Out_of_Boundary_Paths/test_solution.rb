require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_paths' do
    examples.each_slice(5).each_with_index do |(m, n, max_move, start_row, start_column), index|
      it "returns the number of paths to move the ball out of the grid boundary" do
        expect(find_paths(m, n, max_move, start_row, start_column)).to eq(results[index])
      end
    end
  end
end
