require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#peak_index_in_mountain_array' do
    examples.each_with_index do |arr, index|
      it "returns the index of the mountain having the maximum height" do
        expect(peak_index_in_mountain_array(arr)).to eq(results[index])
      end
    end
  end
end
