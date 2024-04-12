require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#shortest_palindrome' do
    examples.each_with_index do |s, index|
      it 'returns the shortest palindrome you can find by performing this transformation' do
        expect(shortest_palindrome(s)).to eq(results[index])
      end
    end
  end
end
