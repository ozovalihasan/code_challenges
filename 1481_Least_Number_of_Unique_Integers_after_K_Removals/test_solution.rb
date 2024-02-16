require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_least_num_of_unique_ints' do
    examples.each_slice(2).each_with_index do |(arr, k), index|
      it "returns the least number of unique integers after removing exactly k elements" do
        expect(find_least_num_of_unique_ints(arr, k)).to eq(results[index])
      end
    end
  end
end
