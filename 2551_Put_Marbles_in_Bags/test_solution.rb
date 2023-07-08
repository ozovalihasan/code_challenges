require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#put_marbles' do
    examples.each_slice(2).each_with_index do |(weights, k), index|
      it "returns the difference between the maximum and minimum scores among marble distributions" do
        expect(put_marbles(weights, k)).to eq(results[index])
      end
    end
  end
end
