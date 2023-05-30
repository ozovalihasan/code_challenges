require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe 'MyHashSet' do
    examples.each_slice(2).each_with_index do |(actions, params), index|
      it "returns a HashSet without using any built-in hash table libraries" do
        my_hash_set = nil

        actions.zip(params).each_with_index do |(action, param), index2|
          case action
          when "MyHashSet"
            my_hash_set = MyHashSet.new
          when "add"
            my_hash_set.add(*param)
          when "contains"
            expect(my_hash_set.contains(*param)).to eq(results[index][index2])
          when "remove"
            my_hash_set.remove(*param)
          end
        end

      end
    end
  end
end
