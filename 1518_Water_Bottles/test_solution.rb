require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#num_water_bottles' do
    examples.each_slice(2).each_with_index do |(num_bottles, num_exchange), index|
      it "returns the maximum number of water bottles you can drink" do
        expect(num_water_bottles(num_bottles, num_exchange)).to eq(results[index])
      end
    end
  end
end
