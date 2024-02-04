require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_window' do
    examples.each_slice(2).each_with_index do |(s, t), index|
      it "returns the minimum window substring of s such that every character in t (including duplicates) is included in the window" do
        expect(min_window(s, t)).to eq(results[index])
      end
    end
  end
end
