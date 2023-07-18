require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe 'LRUCache' do
    examples.each_slice(2).each_with_index do |(actions, params), index|
      it "returns the median value" do
        cache = nil

        actions.zip(params).each_with_index do |(action, param), index2|
          case action
          when "LRUCache"
            cache = LRUCache.new(*param)
          when "put"
            cache.put(*param)
          when "get"
            expect(cache.get(*param)).to eq(results[index][index2])
          end
        end
      end
    end
  end
end
