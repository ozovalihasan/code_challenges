require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_value' do
    examples.each_slice(2).each_with_index do |(events, k), index|
      it "returns the maximum sum of values that you can receive by attending events" do
        expect(max_value(events, k)).to eq(results[index])
      end
    end
  end
end
