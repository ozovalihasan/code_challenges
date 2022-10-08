require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#sort_sentence' do
    examples.each_with_index do |s, index|
      it 'returns the original sentence of a shuffled sentence' do
        expect(sort_sentence(s)).to eq(results[index])
      end
    end
  end
end
