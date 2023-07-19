require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#erase_overlap_intervals' do
    examples.each_with_index do |intervals, index|
      it "returns the minimum number of intervals you need to remove to make the rest of the intervals non-overlapping" do
        expect(erase_overlap_intervals(intervals)).to eq(results[index])
      end
    end
  end
end
