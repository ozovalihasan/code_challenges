require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#word_break' do
    examples.each_slice(2).each_with_index do |(s, word_dict), index|
      it 'returns true if s can be segmented into a space-separated sequence of one or more dictionary words' do
        expect(word_break(s, word_dict)).to eq(results[index])
      end
    end
  end
end
