require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#array_strings_are_equal' do
    examples.each_slice(2).each_with_index do |(word1, word2), index|
      it "returns true if the two arrays represent the same string, and false otherwise" do
        expect(array_strings_are_equal(word1, word2)).to eq(results[index])
      end
    end
  end
end
