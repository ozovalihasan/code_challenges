require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#longest_nice_substring' do
    examples.each_with_index do |s, index|
      it "returns the longest substring of s that is nice" do
        expect(longest_nice_substring(s)).to eq(results[index])
      end
    end
  end
end
