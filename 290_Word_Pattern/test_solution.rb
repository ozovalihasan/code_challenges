require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#word_pattern' do
    examples.each_slice(2).each_with_index do |(pattern, s), index|
      it 'returns true if the string follows the pattern' do
        expect(word_pattern(pattern, s)).to eq(results[index])
      end
    end
  end
end
