require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#stone_game_iii' do
    examples.each_with_index do |stone_value, index|
      it 'returns "Alice" if Alice will win, "Bob" if Bob will win, or "Tie" if they will end the game with the same score' do
        expect(stone_game_iii(stone_value)).to eq(results[index])
      end
    end
  end
end
