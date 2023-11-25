require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#get_sum_absolute_differences' do
    examples.each_with_index do |nums, index|
      it "returns an integer array result with the same length as nums" do
        expect(get_sum_absolute_differences(nums)).to eq(results[index])
      end
    end
  end
end
