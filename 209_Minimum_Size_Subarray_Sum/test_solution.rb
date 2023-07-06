require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_sub_array_len' do
    examples.each_slice(2).each_with_index do |(target, nums), index|
      it "returns the minimal length of a subarray whose sum is greater than or equal to target" do
        expect(min_sub_array_len(target, nums)).to eq(results[index])
      end
    end
  end
end
