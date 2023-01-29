require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe 'LFUCache' do
    examples.each_slice(2).each_with_index do |(actions, params), index|
      it "returns the value of the key if the key exists in the cache. Otherwise, returns -1" do
        lfu = nil

        actions.zip(params).each_with_index do |(action, (arr)), index2|
          case action
          when "LFUCache"
            lfu = LFUCache.new(*arr)
          when "put"
            lfu.put(*arr)
          when "get"
            expect(lfu.get).to eq(results[index][index2])
          end
        end

      end
    end
  end
end
