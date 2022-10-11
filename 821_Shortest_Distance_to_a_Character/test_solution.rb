require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#shortest_to_char' do
    examples.each_slice(2).each_with_index do |(s, c), index|
      it 'returns return an array of distance between the closest "c"' do
        expect(shortest_to_char(s, c)).to eq(results[index])
      end
    end
  end
end
