require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#length_of_lis' do
    examples.each_with_index do |nums, index|
      it "returns the length of the longest strictly increasing subsequence" do
        expect(length_of_lis(nums)).to eq(results[index])
      end
    end
  end
end
