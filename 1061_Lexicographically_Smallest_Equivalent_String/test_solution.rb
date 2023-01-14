require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#smallest_equivalent_string' do
    examples.each_slice(3).each_with_index do |(s1, s2, base_str), index|
      it "returns the lexicographically smallest equivalent string of baseStr by using the equivalency information from s1 and s2" do
        expect(smallest_equivalent_string(s1, s2, base_str)).to eq(results[index])
      end
    end
  end
end
