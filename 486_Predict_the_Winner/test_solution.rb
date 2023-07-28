require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#predict_the_winner' do
    examples.each_with_index do |nums, index|
      it "returns Player 1 can win the game" do
        expect(predict_the_winner(nums)).to eq(results[index])
      end
    end
  end
end
