require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#ones_minus_zeros' do
    examples.each_with_index do |grid, index|
      it "returns the difference matrix diff" do
        expect(ones_minus_zeros(grid)).to eq(results[index])
      end
    end
  end
end
