require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#shortest_completing_word' do
    examples.each_slice(2).each_with_index do |(license_plate, words), index|
      it 'returns the shortest completing word in words' do
        expect(shortest_completing_word(license_plate, words)).to eq(results[index])
      end
    end
  end
end
