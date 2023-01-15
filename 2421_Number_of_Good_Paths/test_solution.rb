require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#number_of_good_paths' do
    examples.each_slice(2).each_with_index do |(vals, edges), index|
      it "returns the number of distinct good paths" do
        expect(number_of_good_paths(vals, edges)).to eq(results[index])
      end
    end
  end
end
