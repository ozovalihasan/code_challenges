require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_repeating' do
    examples.each_slice(2).each_with_index do |(sequence, word), index|
      it 'returns the maximum k-repeating value of word in sequence' do
        expect(max_repeating(sequence, word)).to eq(results[index])
      end
    end
  end
end
