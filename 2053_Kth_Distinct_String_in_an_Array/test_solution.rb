require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#kth_distinct' do
    examples.each_slice(2).each_with_index do |(arr, k), index|
      it "returns the kth distinct string present in arr" do
        expect(kth_distinct(arr, k)).to eq(results[index])
      end
    end
  end
end
