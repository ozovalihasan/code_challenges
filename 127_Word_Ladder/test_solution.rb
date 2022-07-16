require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#ladder_length' do
    examples.each_slice(3).each_with_index do |(begin_word, end_word, word_list), index|
      it 'returns the number of words in the shortest transformation sequence' do
        expect(ladder_length(begin_word, end_word, word_list)).to eq(results[index])
      end
    end
  end
end
