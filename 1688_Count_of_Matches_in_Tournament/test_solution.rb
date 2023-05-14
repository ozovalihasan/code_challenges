require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#number_of_matches' do
    examples.each_with_index do |n, index|
      it 'returns the number of matches played in the tournament until a winner is decided' do
        expect(number_of_matches(n)).to eq(results[index])
      end
    end
  end
end
