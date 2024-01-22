require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_error_nums' do
    examples.each_with_index do |nums, index|
      it "returns the number that occurs twice and the number that is missing and return them in the form of an array" do
        expect(find_error_nums(nums)).to eq(results[index])
      end
    end
  end
end
