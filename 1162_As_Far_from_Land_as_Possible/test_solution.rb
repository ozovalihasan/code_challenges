require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_distance' do
    examples.each_with_index do |grid, index|
      it 'returns the distance' do
        expect(max_distance(grid)).to eq(results[index])
      end
    end
  end
end
