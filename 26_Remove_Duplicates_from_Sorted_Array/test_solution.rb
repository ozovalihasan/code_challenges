require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#remove_duplicates' do
    examples.each_with_index do |nums, index|
      it "returns k after placing the final result in the first k slots of nums" do
        expect(remove_duplicates(nums)).to eq(nums.size)
        expect(nums).to eq(results[index])
      end
    end
  end
end
