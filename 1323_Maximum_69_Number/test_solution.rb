require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#maximum69_number' do
    examples.each_with_index do |num, index|
      it "returns the maximum number you can get by changing at most one digit" do
        expect(maximum69_number(num)).to eq(results[index])
      end
    end
  end
end
