require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_characters' do
    examples.each_slice(2).each_with_index do |(words, chars), index|
      it "returns the sum of lengths of all good strings in words" do
        expect(count_characters(words, chars)).to eq(results[index])
      end
    end
  end
end
