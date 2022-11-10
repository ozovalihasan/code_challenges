require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#remove_duplicates' do
    examples.each_with_index do |s, index|
      it 'returns the final string after all such duplicate removals have been made' do
        expect(remove_duplicates(s)).to eq(results[index])
      end
    end
  end
end
