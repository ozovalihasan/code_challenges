require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#get_winner' do
    examples.each_slice(2).each_with_index do |(arr, k), index|
      it "returns the integer which will win the game" do
        expect(get_winner(arr, k)).to eq(results[index])
      end
    end
  end
end
