require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_max_fish' do
    examples.each_with_index do |grid, index|
      it 'returns the maximum number of fish the fisher can catch if he chooses his starting cell optimally, or 0 if no water cell exists' do
        expect(find_max_fish(grid)).to eq(results[index])
      end
    end
  end
end
