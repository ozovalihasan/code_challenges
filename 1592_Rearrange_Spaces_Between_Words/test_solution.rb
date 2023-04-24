require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#reorder_spaces' do
    examples.each_with_index do |text, index|
      it 'returns the string after rearranging the spaces' do
        expect(reorder_spaces(text)).to eq(results[index])
      end
    end
  end
end
