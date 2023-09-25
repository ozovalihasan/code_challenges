require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_column_width' do
    examples.each_with_index do |grid, index|
      it "returns an integer array ans of size n where ans[i] is the width of the ith column" do
        expect(find_column_width(grid)).to eq(results[index])
      end
    end
  end
end
