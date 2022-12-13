require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_falling_path_sum' do
    examples.each_with_index do |matrix, index|
      it "returns the minimum sum of any falling path through matrix" do
        expect(min_falling_path_sum(matrix)).to eq(results[index])
      end
    end
  end
end
