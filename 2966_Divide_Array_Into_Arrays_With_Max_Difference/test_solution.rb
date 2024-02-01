require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#divide_array' do
    examples.each_slice(2).each_with_index do |(nums, k), index|
      it "returns a 2D array containing all the arrays" do
        expect(divide_array(nums, k)).to eq(results[index])
      end
    end
  end
end
