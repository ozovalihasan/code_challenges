require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#minimum_deviation' do
    examples.each_with_index do |nums, index|
      it "returns the minimum deviation the array can have after performing some number of operations" do
        expect(minimum_deviation(nums)).to eq(results[index])
      end
    end
  end
end
