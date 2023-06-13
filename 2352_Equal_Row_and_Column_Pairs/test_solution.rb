require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#equal_pairs' do
    examples.each_with_index do |grid, index|
      it 'returns the number of pairs (ri, cj) such that row ri and column cj are equal' do
        expect(equal_pairs(grid)).to eq(results[index])
      end
    end
  end
end
