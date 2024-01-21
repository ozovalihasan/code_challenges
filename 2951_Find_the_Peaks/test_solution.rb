require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_peaks' do
    examples.each_with_index do |mountain, index|
      it "returns an array that consists of indices of peaks in the given array in any order" do
        expect(find_peaks(mountain)).to match_array(results[index])
      end
    end
  end
end
