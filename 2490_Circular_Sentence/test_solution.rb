require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#is_circular_sentence' do
    examples.each_with_index do |sentence, index|
      it 'returns true if the sentence is circular' do
        expect(is_circular_sentence(sentence)).to eq(results[index])
      end
    end
  end
end
