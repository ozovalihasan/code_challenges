require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_operations' do
    examples.each_slice(2).each_with_index do |(nums, x), index|
      it "returns the minimum number of operations to reduce x to exactly 0" do
        expect(min_operations(nums, x)).to eq(results[index])
      end
    end
  end
end
