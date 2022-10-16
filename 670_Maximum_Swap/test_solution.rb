require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#maximum_swap' do
    examples.each_with_index do |num, index|
      it "returns the maximum valued number by swapping two digits at most once to get the maximum valued number" do
        expect(maximum_swap(num)).to eq(results[index])
      end
    end
  end
end
