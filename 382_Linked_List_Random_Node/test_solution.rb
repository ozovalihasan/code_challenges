require_relative './solution'
require_relative '../read_test_files'
require_relative 'linked_list'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe 'SummaryRanges' do
    examples.each_slice(2).each_with_index do |(actions, params), index|
      it "returns a random node's value from the linked list" do
        solution = nil

        actions.zip(params).each_with_index do |(action, param), index2|
          case action
          when "Solution"
            linked_list = LinkedList.new(param)
            solution = Solution.new(linked_list)
          when "getRandom"
            expect(params.first.include? solution.get_random).to be true
          end
        end

      end
    end
  end
end
