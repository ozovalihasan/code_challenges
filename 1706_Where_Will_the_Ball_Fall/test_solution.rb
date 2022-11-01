require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_ball' do
    examples.each_with_index do |grid, index|
      it "returns an array answer of size n where answer[i] is the column"\
        " that the ball falls out of at the bottom after dropping the ball"\
        " from the ith column at the top, or -1 if the ball gets stuck in the box" do
        expect(find_ball(grid)).to eq(results[index])
      end
    end
  end
end
