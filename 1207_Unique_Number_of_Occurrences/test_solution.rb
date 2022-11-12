require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#unique_occurrences' do
    examples.each_with_index do |arr, index|
      it "returns true if the number of occurrences of each value in the array is unique, or false otherwise" do
        expect(unique_occurrences(arr)).to eq(results[index])
      end
    end
  end
end
