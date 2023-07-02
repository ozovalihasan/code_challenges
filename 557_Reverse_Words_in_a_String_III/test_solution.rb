require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#reverse_words' do
    examples.each_with_index do |s, index|
      it "returns s by reversing the order of characters in each word within a sentence while still preserving whitespace and initial word order" do
        expect(reverse_words(s)).to eq(results[index])
      end
    end
  end
end
