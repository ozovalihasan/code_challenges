require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#get_row' do
    examples.each_with_index do |row_index, index|
      it 'returns the rowIndexth (0-indexed) row of the Pascal"s triangle' do
        expect(get_row(row_index)).to eq(results[index])
      end
    end
  end
end
