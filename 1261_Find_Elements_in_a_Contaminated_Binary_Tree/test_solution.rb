require_relative './solution'
require_relative '../read_test_files'
require_relative './binary_tree'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe 'FindElements' do
    examples.each_slice(2).each_with_index do |(actions, params), index|
      it "returns FindElements " do
        find_elements = nil

        actions.zip(params).each_with_index do |(action, param), index2|
          case action
          when "FindElements"
            find_elements = FindElements.new(Tree.new(*param).root)
          when "find"
            expect(find_elements.find(*param)).to eq(results[index][index2])
          end
        end

      end
    end
  end
end
