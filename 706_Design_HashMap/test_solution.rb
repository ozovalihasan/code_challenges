require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe 'MyHashMap' do
    examples.each_slice(2).each_with_index do |(actions, params), index|
      it "returns a class 'MyHashMap'" do
        my_hash_map = nil
        actions.zip(params).each_with_index do |(action, (*param)), index2|
          if action == 'MyHashMap'
            my_hash_map = MyHashMap.new
          elsif action == 'put'
            my_hash_map.put(*param)
          elsif action == 'remove'
            my_hash_map.remove(*param)
          elsif action == 'get'
            expect(my_hash_map.get(*param)).to eq(results[index][index2])
          end
        end
      end
    end
  end
end
