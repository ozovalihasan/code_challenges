require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_asterisks' do
    examples.each_with_index do |str, index|
      it "returns the number of '*' in s, excluding the '*' between each pair of '|'" do
        expect(count_asterisks(str)).to eq(results[index])
      end
    end
  end
end
