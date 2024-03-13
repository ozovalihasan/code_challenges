require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#pivot_integer' do
    examples.each_with_index do |n, index|
      it "returns the pivot integer x" do
        expect(pivot_integer(n)).to eq(results[index])
      end
    end
  end
end
