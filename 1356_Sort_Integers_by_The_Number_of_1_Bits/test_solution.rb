require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#sort_by_bits' do
    examples.each_with_index do |arr, index|
      it "returns the array after sorting it" do
        expect(sort_by_bits(arr)).to eq(results[index])
      end
    end
  end
end
