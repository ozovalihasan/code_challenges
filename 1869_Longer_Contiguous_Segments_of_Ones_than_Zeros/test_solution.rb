require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#check_zero_ones' do
    examples.each_with_index do |s, index|
      it "true if the longest contiguous segment of 1's is strictly longer than the longest contiguous segment of 0's in s, or return false otherwise" do
        expect(check_zero_ones(s)).to eq(results[index])
      end
    end
  end
end
