require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#valid_partition' do
    examples.each_with_index do |nums, index|
      it "returns true if the array has at least one valid partition" do
        expect(valid_partition(nums)).to eq(results[index])
      end
    end
  end
end
