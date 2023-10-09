require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#create_target_array' do
    examples.each_slice(2).each_with_index do |(nums, num_index), index|
      it "returns the target array" do
        expect(create_target_array(nums, num_index)).to eq(results[index])
      end
    end
  end
end
