require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find132pattern' do
    examples.each_with_index do |nums, index|
      it "returns true if there is a 132 pattern in nums" do
        expect(find132pattern(nums)).to eq(results[index])
      end
    end
  end
end
