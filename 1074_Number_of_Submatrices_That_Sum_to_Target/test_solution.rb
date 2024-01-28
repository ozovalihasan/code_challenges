require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#num_submatrix_sum_target' do
    examples.each_slice(2).each_with_index do |(matrix, target), index|
      it "returns the number of non-empty submatrices that sum to target" do
        expect(num_submatrix_sum_target(matrix, target)).to eq(results[index])
      end
    end
  end
end
