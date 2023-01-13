require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#longest_path' do
    examples.each_slice(2).each_with_index do |(parent, s), index|
      it "returns the length of the longest path in the tree such that no pair of adjacent nodes on the path have the same character assigned to them" do
        expect(longest_path(parent, s)).to eq(results[index])
      end
    end
  end
end
