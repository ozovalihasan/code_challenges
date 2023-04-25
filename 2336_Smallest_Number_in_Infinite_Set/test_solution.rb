require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe 'SmallestInfiniteSet' do
    examples.each_slice(2).each_with_index do |(actions, params), index|
      it "returns a class 'SmallestInfiniteSet'" do
        smallest_infinite_set = nil
        actions.zip(params).each_with_index do |(action, (param)), index2|
          if action == "SmallestInfiniteSet"
            smallest_infinite_set = SmallestInfiniteSet.new
          elsif action == "addBack"
            smallest_infinite_set.add_back(param)
          elsif action == "popSmallest"
            expect(smallest_infinite_set.pop_smallest).to eq(results[index][index2])
          end
        end

      end
    end
  end
end
