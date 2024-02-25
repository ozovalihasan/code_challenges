require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#can_traverse_all_pairs' do
    examples.each_with_index do |nums, index|
      it "returns true if it is possible to traverse between all such pairs of indices, or false otherwise" do
        expect(can_traverse_all_pairs(nums)).to eq(results[index])
      end
    end
  end
end
