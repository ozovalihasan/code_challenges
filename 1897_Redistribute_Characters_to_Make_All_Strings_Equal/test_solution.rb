require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#make_equal' do
    examples.each_with_index do |words, index|
      it "returns true if you can make every string in words equal using any number of operations, and false otherwise" do
        expect(make_equal(words)).to eq(results[index])
      end
    end
  end
end
