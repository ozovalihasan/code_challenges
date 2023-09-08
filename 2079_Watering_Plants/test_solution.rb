require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#watering_plants' do
    examples.each_slice(2).each_with_index do |(plants, capacity), index|
      it "returns the number of steps needed to water all the plants" do
        expect(watering_plants(plants, capacity)).to eq(results[index])
      end
    end
  end
end
