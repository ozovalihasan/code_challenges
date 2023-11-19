require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#reduction_operations' do
    examples.each_with_index do |nums, index|
      it "returns the number of operations to make all elements in nums equal" do
        expect(reduction_operations(nums)).to eq(results[index])
      end
    end
  end
end
