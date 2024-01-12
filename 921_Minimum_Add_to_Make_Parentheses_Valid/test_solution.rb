require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_add_to_make_valid' do
    examples.each_with_index do |str, index|
      it 'returns the minimum number of moves required to make str valid' do
        expect(min_add_to_make_valid(str)).to eq(results[index])
      end
    end
  end
end
