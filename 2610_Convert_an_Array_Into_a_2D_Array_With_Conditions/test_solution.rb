require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_matrix' do
    examples.each_with_index do |nums, index|
      it "returns a 2D array from nums satisfying the given conditions" do
        expect(find_matrix(nums)).to match_array(results[index])
      end
    end
  end
end
