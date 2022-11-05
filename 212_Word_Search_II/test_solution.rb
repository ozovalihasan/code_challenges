require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_words' do
    examples.each_slice(2).each_with_index do |(board, words), index|
      it "returns all words on the board" do
        expect(find_words(board, words)).to eq(results[index])
      end
    end
  end
end
