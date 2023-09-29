require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#divide_array' do
    examples.each_with_index do |nums, index|
      it "returns true if nums can be divided into n pairs" do
        expect(divide_array(nums)).to eq(results[index])
      end
    end
  end
end
