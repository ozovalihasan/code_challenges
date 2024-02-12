require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#reverse_prefix' do
    examples.each_slice(2).each_with_index do |(word, ch), index|
      it 'returns the resulting string' do
        expect(reverse_prefix(word, ch)).to eq(results[index])
      end
    end
  end
end
