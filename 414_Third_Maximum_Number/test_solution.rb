require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#third_max' do
    examples.each_with_index do |nums, index|
      it "returns the third distinct maximum number in this array" do
        expect(third_max(nums)).to eq(results[index])
      end
    end
  end
end
