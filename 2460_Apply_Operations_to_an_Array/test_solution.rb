require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#apply_operations' do
    examples.each_with_index do |nums, index|
      it "eturns the resulting array asfter performing all the operations, shift all the 0's to the end of the array" do
        expect(apply_operations(nums)).to eq(results[index])
      end
    end
  end
end
