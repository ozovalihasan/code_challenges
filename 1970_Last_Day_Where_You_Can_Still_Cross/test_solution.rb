require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#latest_day_to_cross' do
    examples.each_slice(3).each_with_index do |(row, col, cells), index|
      it 'returns the last day where it is possible to walk from the top to the bottom by only walking on land cells' do
        expect(latest_day_to_cross(row, col, cells)).to eq(results[index])
      end
    end
  end
end
