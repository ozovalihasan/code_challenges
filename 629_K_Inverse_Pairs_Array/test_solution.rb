require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#k_inverse_pairs' do
    examples.each_slice(2).each_with_index do |(n, k), index|
      it "returns the number of different arrays consist of numbers from 1 to n such that there are exactly k inverse pairs" do
        expect(k_inverse_pairs(n, k)).to eq(results[index])
      end
    end
  end
end
