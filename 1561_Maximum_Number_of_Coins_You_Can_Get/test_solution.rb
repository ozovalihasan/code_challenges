require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_coins' do
    examples.each_with_index do |piles, index|
      it "returns the minimized maximum pair sum after optimally pairing up the elements" do
        expect(max_coins(piles)).to eq(results[index])
      end
    end
  end
end
