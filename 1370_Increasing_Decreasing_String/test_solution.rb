require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#sort_string' do
    examples.each_with_index do |s, index|
      it 'returns the result string after sorting s with this algorithm' do
        expect(sort_string(s)).to eq(results[index])
      end
    end
  end
end
