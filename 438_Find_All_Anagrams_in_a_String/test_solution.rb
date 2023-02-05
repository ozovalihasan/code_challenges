require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_anagrams' do
    examples.each_slice(2).each_with_index do |(s, p), index|
      it "returns an array of all the start indices of p's anagrams in s" do
        expect(find_anagrams(s, p)).to match_array(results[index])
      end
    end
  end
end
