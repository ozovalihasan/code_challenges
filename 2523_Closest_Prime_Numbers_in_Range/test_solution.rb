require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#closest_primes' do
    examples.each_slice(2).each_with_index do |(left, right), index|
      it "returns the positive integer array ans = [num1, num2]" do
        expect(closest_primes(left, right)).to eq(results[index])
      end
    end
  end
end
