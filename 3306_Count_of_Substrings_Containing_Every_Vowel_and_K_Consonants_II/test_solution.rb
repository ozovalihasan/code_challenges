require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_of_substrings' do
    examples.each_slice(2).each_with_index do |(word, k), index|
      it "returns the total number of of word that contain every vowel ('a', 'e', 'i', 'o', and 'u') at least once and exactly k consonants" do
        expect(count_of_substrings(word, k)).to eq(results[index])
      end
    end
  end
end
