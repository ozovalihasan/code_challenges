require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#arrange_words' do
    examples.each_with_index do |text, index|
      it 'returns the new text following the format shown above' do
        expect(arrange_words(text)).to eq(results[index])
      end
    end
  end
end
