require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#largest_perimeter' do
    examples.each_with_index do |nums, index|
      it "returns the largest possible perimeter of a polygon whose sides can be formed from nums" do
        expect(largest_perimeter(nums)).to eq(results[index])
      end
    end
  end
end
