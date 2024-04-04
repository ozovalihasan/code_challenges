require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_depth' do
    examples.each_with_index do |str, index|
      it 'returns the nesting depth of s' do
        expect(max_depth(str)).to eq(results[index])
      end
    end
  end
end
