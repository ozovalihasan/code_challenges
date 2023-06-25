require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_routes' do
    examples.each_slice(4).each_with_index do |(locations, start, finish, fuel), index|
      it 'returns true if and only if the given words are sorted lexicographically in the alien language' do
        expect(count_routes(locations, start, finish, fuel)).to eq(results[index])
      end
    end
  end
end
