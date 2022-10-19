require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_repeated_dna_sequences' do
    examples.each_with_index do |s, index|
      it "returns all the 10-letter-long sequences (substrings) that occur more than once in a DNA molecule" do
        expect(find_repeated_dna_sequences(s)).to eq(results[index])
      end
    end
  end
end
