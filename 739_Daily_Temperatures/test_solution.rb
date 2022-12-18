require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#daily_temperatures' do
    examples.each_with_index do |temperatures, index|
      it "returns an array answer such that answer[i] is the number of days you have to wait after the ith day to get a warmer temperature" do
        expect(daily_temperatures(temperatures)).to eq(results[index])
      end
    end
  end
end
