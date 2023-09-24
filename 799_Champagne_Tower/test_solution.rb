require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#champagne_tower' do
    examples.each_slice(3).each_with_index do |(poured, query_row, query_glass), index|
      it 'returns how full the jth glass in the ith row is' do
        expect(champagne_tower(poured, query_row, query_glass)).to eq(results[index])
      end
    end
  end
end
