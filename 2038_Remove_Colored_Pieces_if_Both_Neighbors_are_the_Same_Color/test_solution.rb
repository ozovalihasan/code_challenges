require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#winner_of_game' do
    examples.each_with_index do |colors, index|
      it "returns true if Alice wins" do
        expect(winner_of_game(colors)).to eq(results[index])
      end
    end
  end
end
