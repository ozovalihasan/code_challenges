require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#sequential_digits' do
    examples.each_slice(2).each_with_index do |(low, high), index|
      it "returns the minimum number of steps to walk" do
        expect(sequential_digits(low, high)).to eq(results[index])
      end
    end
  end
end
