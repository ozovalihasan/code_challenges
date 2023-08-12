require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#unique_paths_with_obstacles' do
    examples.each_with_index do |obstacle_grid, index|
      it "returns the number of possible unique paths that the robot can take to reach the bottom-right corner" do
        expect(unique_paths_with_obstacles(obstacle_grid)).to eq(results[index])
      end
    end
  end
end
