require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#outer_trees' do
    examples.each_with_index do |trees, index|
      it "returns the coordinates of trees that are exactly located on the fence perimeter" do
        expect(outer_trees(trees)).to match_array(results[index])
      end
    end
  end
end
