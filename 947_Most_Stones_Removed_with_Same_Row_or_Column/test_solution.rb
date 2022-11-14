require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#remove_stones' do
    examples.each_with_index do |stones, index|
      it "returns the largest possible number of stones that can be removed" do
        expect(remove_stones(stones)).to eq(results[index])
      end
    end
  end
end
