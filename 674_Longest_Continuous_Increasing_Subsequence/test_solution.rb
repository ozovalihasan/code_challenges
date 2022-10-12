require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_length_of_lcis' do
    examples.each_with_index do |nums, index|
      it "returns the length of the longest continuous increasing subsequence" do
        expect(find_length_of_lcis(nums)).to eq(results[index])
      end
    end
  end
end
