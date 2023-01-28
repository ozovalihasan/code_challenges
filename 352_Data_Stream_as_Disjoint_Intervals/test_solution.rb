require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe 'SummaryRanges' do
    examples.each_slice(2).each_with_index do |(actions, params), index|
      it "returns a summary of the integers in the stream currently as a list of disjoint intervals [starti, endi]" do
        ranges = nil

        actions.zip(params).each_with_index do |(action, (val)), index2|
          case action
          when "SummaryRanges"
            ranges = SummaryRanges.new
          when "addNum"
            ranges.add_num(val)
          when "getIntervals"
            expect(ranges.get_intervals).to eq(results[index][index2])
          end
        end

      end
    end
  end
end
