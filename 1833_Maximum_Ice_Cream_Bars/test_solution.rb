require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_ice_cream' do
    examples.each_slice(2).each_with_index do |(costs, coins), index|
      it "returns the maximum number of ice cream bars the boy can buy with coins coins" do
        expect(max_ice_cream(costs, coins)).to eq(results[index])
      end
    end
  end
end
