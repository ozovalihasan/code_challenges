require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe 'RandomizedSet' do
    examples.each_slice(2).each_with_index do |(actions, params), index|
      it "returns the median value" do
        arr = RandomizedSet.new

        actions.zip(params).each_with_index do |(action, param), index2|
          case action
          when "insert"
            expect(arr.insert(param)).to eq(results[index][index2])
          when "remove"
            expect(arr.remove(param)).to eq(results[index][index2])
          when "getRandom"
            expect(arr.current_arr).to include(arr.get_random)
          end
        end

      end
    end
  end
end
