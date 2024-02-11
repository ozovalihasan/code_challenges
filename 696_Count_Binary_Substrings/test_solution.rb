require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_binary_substrings' do
    examples.each_with_index do |str, index|
      it "returns the number of non-empty substrings that have the same number of 0's and 1's" do
        expect(count_binary_substrings(str)).to eq(results[index])
      end
    end
  end
end
