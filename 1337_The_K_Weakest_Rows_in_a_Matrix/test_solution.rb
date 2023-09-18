require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#k_weakest_rows' do
    examples.each_slice(2).each_with_index do |(mat, k), index|
      it "returns the indices of the k weakest rows in the matrix ordered from weakest to strongest" do
        expect(k_weakest_rows(mat, k)).to eq(results[index])
      end
    end
  end
end
