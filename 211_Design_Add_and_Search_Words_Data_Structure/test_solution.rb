require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe 'WordDictionary' do
    examples.each_slice(2).each_with_index do |(actions, params), index|
      it "returns a class 'WordDictionary'" do
        word_dictionary = nil
        actions.zip(params).each_with_index do |(action, (param)), index2|
          if action == "WordDictionary"
            word_dictionary = WordDictionary.new
          elsif action == "addWord"
            word_dictionary.add_word(param)
          elsif action == "search"
            expect(word_dictionary.search(param)).to eq(results[index][index2])
          end
        end

      end
    end
  end
end
