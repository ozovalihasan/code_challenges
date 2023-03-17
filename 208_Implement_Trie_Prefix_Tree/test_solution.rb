require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe 'Trie' do
    examples.each_slice(2).each_with_index do |(actions, params), index|
      it "returns a class 'Trie'" do
        actions.zip(params).each_with_index do |(action, (param)), index2|
          trie = nil
          if action == "Trie"
            trie = Trie.new
          elsif action == "insert"
            trie.insert(param)
          elsif action == "search"
            expect(trie.search(param)).to eq(results[index][index2])
          elsif action == "startsWith"
            expect(trie.startsWith(param)).to eq(results[index][index2])
          end
        end

      end
    end
  end
end
