require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#check_palindrome_formation' do
    examples.each_slice(2).each_with_index do |(a, b), index|
      it "returns true if it is possible to form a palindrome string" do
        expect(check_palindrome_formation(a, b)).to eq(results[index])
      end
    end
  end
end
