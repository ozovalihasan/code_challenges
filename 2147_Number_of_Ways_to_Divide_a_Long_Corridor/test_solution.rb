require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#number_of_ways' do
    examples.each_with_index do |corridor, index|
      it "returns the number of ways to divide the corridor" do
        expect(number_of_ways(corridor)).to eq(results[index])
      end
    end
  end
end
