require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#check_inclusion' do
    examples.each_slice(2).each_with_index do |(s1, s2), index|
      it "returns true if one of s1's permutations is the substring of s2" do
        expect(check_inclusion(s1, s2)).to eq(results[index])
      end
    end
  end
end
