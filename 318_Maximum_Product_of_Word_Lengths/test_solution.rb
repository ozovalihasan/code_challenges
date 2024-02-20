require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_product' do
    examples.each_with_index do |words, index|
      it 'returns the maximum value of length(word[i]) * length(word[j]) where the two words do not share common letters' do
        expect(max_product(words)).to eq(results[index])
      end
    end
  end
end
