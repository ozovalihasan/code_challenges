require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#num_different_integers' do
    examples.each_with_index do |word, index|
      it 'returns the number of different integers after performing the replacement operations on word' do
        expect(num_different_integers(word)).to eq(results[index])
      end
    end
  end
end
