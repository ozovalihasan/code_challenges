require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_score' do
    examples.each_with_index do |s, index|
      it "returns the maximum score after splitting the string into two non-empty substrings" do
        expect(max_score(s)).to eq(results[index])
      end
    end
  end
end
