require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#number_of_powerful_int' do
    examples.each_slice(4).each_with_index do |(start, finish, limit, s), index|
      it "returns the total number of powerful integers in the range [start..finish]" do
        expect(number_of_powerful_int(start, finish, limit, s)).to eq(results[index])
      end
    end
  end
end
