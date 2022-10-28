require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#largest_overlap' do
    examples.each_with_index do |strs, index|
      it "returns the anagrams grouped together" do
        expect(group_anagrams(strs).map(&:sort)).to match_array(results[index])
      end
    end
  end
end
