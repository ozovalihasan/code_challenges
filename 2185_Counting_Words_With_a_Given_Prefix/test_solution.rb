require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#prefix_count' do
    examples.each_slice(2).each_with_index do |(words, pref), index|
      it 'returns the number of strings in words that contain pref as a prefix' do
        expect(prefix_count(words, pref)).to eq(results[index])
      end
    end
  end
end
