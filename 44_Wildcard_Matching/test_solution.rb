require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#is_match' do
    examples.each_slice(2).each_with_index do |(s, p), index|
      it "returns true if the matching should cover the entire input string (not partial)" do
        expect(is_match(s, p)).to eq(results[index])
      end
    end
  end
end
