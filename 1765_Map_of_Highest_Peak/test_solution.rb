require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#highest_peak' do
    examples.each_with_index do |is_water, index|
      it "returns an integer matrix height of size m x n where height[i][j] is cell (i, j)'s height" do
        expect(highest_peak(is_water)).to eq(results[index])
      end
    end
  end
end
