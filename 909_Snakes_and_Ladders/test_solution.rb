require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#snakes_and_ladders' do
    examples.each_with_index do |board, index|
      it 'returns the least number of moves required to reach the square n**2' do
        expect(snakes_and_ladders(board)).to eq(results[index])
      end
    end
  end
end
