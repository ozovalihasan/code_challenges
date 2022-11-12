require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe 'MedianFinder' do
    examples.each_slice(2).each_with_index do |(actions, params), index|
      it "returns the median value" do
        arr = MedianFinder.new

        actions.zip(params).each_with_index do |(action, (param)), index2|
          if action == "findMedian"
            expect(arr.find_median()).to eq(results[index][index2])
          elsif action == "addNum"
            arr.add_num(param)
          end
        end

      end
    end
  end
end
