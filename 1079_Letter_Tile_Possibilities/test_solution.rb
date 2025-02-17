require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#num_tile_possibilities' do
    examples.each_with_index do |tiles, index|
      it 'returns the number of possible non-empty sequences of letters you can make using the letters printed on those tiles' do
        expect(num_tile_possibilities(tiles)).to eq(results[index])
      end
    end
  end
end
