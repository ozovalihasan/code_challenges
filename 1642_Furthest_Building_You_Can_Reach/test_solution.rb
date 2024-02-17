require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#furthest_building' do
    examples.each_slice(3).each_with_index do |(heights, bricks, ladders), index|
      it 'returns the furthest building index (0-indexed) you can reach if you use the given ladders and bricks optimally' do
        expect(furthest_building(heights, bricks, ladders)).to eq(results[index])
      end
    end
  end
end
