require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#convert_to_title' do
    examples.each_with_index do |column_number, index|
      it 'returns its corresponding column title as it appears in an Excel sheet' do
        expect(convert_to_title(column_number)).to eq(results[index])
      end
    end
  end
end
