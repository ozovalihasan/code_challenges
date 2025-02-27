require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#len_longest_fib_subseq' do
    examples.each_with_index do |arr, index|
      it "returns the length of the longest Fibonacci-like subsequence of arr" do
        expect(len_longest_fib_subseq(arr)).to eq(results[index])
      end
    end
  end
end
