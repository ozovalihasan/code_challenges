require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#integer_replacement' do
    examples.each_with_index do |n, index|
      it "returns the minimum number of operations needed for n to become 1" do
        expect(integer_replacement(n)).to eq(results[index])
      end
    end
  end
end
