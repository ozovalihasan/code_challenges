require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#rearrange_array' do
    examples.each_with_index do |nums, index|
      it "returns the modified array after rearranging the elements to satisfy the aforementioned conditions" do
        expect(rearrange_array(nums)).to eq(results[index])
      end
    end
  end
end
