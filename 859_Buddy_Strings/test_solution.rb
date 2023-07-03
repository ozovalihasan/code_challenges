require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#buddy_strings' do
    examples.each_slice(2).each_with_index do |(s, goal), index|
      it "returns true if you can swap two letters in s so the result is equal to goal, otherwise, return false" do
        expect(buddy_strings(s, goal)).to eq(results[index])
      end
    end
  end
end
