require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_deletions' do
    examples.each_with_index do |s, index|
      it 'returns the minimum number of characters you need to delete to make s good' do
        expect(min_deletions(s)).to eq(results[index])
      end
    end
  end
end
