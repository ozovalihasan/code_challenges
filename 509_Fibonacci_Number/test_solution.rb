require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#fib' do
    examples.each_with_index do |n, index|
      it "returns f(n)" do
        expect(fib(n)).to eq(results[index])
      end
    end
  end
end
