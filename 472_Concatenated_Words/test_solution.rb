require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_all_concatenated_words_in_a_dict' do
    examples.each_with_index do |words, index|
      it "returns all the concatenated words in the given list of words" do
        expect(find_all_concatenated_words_in_a_dict(words)).to eq(results[index])
      end
    end
  end
end
