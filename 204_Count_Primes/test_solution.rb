require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_primes' do
    examples.each_with_index do |n, index|
      it "returns the number of prime numbers that are strictly less than n" do
        expect(count_primes(n)).to eq(results[index])
      end
    end
  end
end
