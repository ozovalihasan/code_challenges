require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_increase_keeping_skyline' do
    examples.each_with_index do |grid, index|
      it "returns the maximum total sum that the height of the buildings" do
        expect(max_increase_keeping_skyline(grid)).to eq(results[index])
      end
    end
  end
end
