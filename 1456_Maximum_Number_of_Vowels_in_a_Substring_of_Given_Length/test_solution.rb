require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_vowels' do
    examples.each_slice(2).each_with_index do |(s, k), index|
      it "returns the maximum number of vowel letters in any substring of s with length k" do
        expect(max_vowels(s, k)).to eq(results[index])
      end
    end
  end
end
