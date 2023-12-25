require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#monotone_increasing_digits' do
    examples.each_with_index do |n, index|
      it "returns the largest number that is less than or equal to n with monotone increasing digits" do
        expect(monotone_increasing_digits(n)).to eq(results[index])
      end
    end
  end
end
